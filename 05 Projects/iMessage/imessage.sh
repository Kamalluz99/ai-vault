#!/usr/bin/env bash
# iMessage CLI — macOS only. Requires Full Disk Access for Terminal (read commands)
# and Messages.app open (send command).

set -euo pipefail

CHAT_DB="${HOME}/Library/Messages/chat.db"
SCRIPT_NAME="$(basename "$0")"

# Vault root: two levels up from this script's location (05 Projects/iMessage/ → vault root)
VAULT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")/../.." && pwd)"
MESSAGES_DIR="${VAULT_DIR}/03 Meetings/iMessage"

die() { echo "${SCRIPT_NAME}: $*" >&2; exit 1; }

require_macos() {
    [[ "$(uname)" == "Darwin" ]] || die "This tool requires macOS"
}

require_chat_db() {
    [[ -f "$CHAT_DB" ]] || die "chat.db not found at ${CHAT_DB}
Grant Terminal Full Disk Access: System Settings → Privacy & Security → Full Disk Access"
}

# ──────────────────────────────────────────────
# send <recipient> <message...>
# recipient: phone number (+15551234567) or Apple ID email
# ──────────────────────────────────────────────
cmd_send() {
    [[ $# -ge 2 ]] || die "Usage: ${SCRIPT_NAME} send <recipient> <message>"
    require_macos

    local recipient="$1"; shift
    local message="$*"

    python3 - "$recipient" "$message" << 'PYEOF'
import subprocess, sys

recipient = sys.argv[1]
message   = sys.argv[2]

def esc(s):
    return s.replace('\\', '\\\\').replace('"', '\\"')

script = f'''
tell application "Messages"
    set targetService to 1st service whose service type = iMessage
    set targetBuddy to buddy "{esc(recipient)}" of targetService
    send "{esc(message)}" to targetBuddy
end tell
'''

r = subprocess.run(['osascript', '-e', script], capture_output=True, text=True)
if r.returncode != 0:
    # Fallback: try without specifying service type (lets Messages pick)
    script_fallback = f'''
tell application "Messages"
    send "{esc(message)}" to buddy "{esc(recipient)}" of service "SMS"
end tell
'''
    r = subprocess.run(['osascript', '-e', script_fallback], capture_output=True, text=True)
    if r.returncode != 0:
        print(f"Error sending message: {r.stderr.strip()}", file=sys.stderr)
        sys.exit(1)

print(f"Sent to {sys.argv[1]}")
PYEOF
}

# ──────────────────────────────────────────────
# read [recipient] [-n N]
# Shows recent messages. Filter by phone/email fragment with recipient arg.
# ──────────────────────────────────────────────
cmd_read() {
    require_chat_db
    local recipient="" limit=20
    while [[ $# -gt 0 ]]; do
        case "$1" in
            -n|--limit) limit="${2:?limit requires a value}"; shift 2 ;;
            *) recipient="$1"; shift ;;
        esac
    done

    if [[ -n "$recipient" ]]; then
        sqlite3 -column -header "$CHAT_DB" << SQL
SELECT
    datetime(m.date/1000000000 + strftime('%s','2001-01-01'),'unixepoch','localtime') AS time,
    CASE WHEN m.is_from_me = 1 THEN 'Me' ELSE coalesce(h.id,'?') END AS from_,
    coalesce(m.text,'[attachment]') AS text
FROM message m
LEFT JOIN handle h ON m.handle_id = h.ROWID
JOIN chat_message_join cmj ON m.ROWID = cmj.message_id
JOIN chat c ON cmj.chat_id = c.ROWID
WHERE c.chat_identifier LIKE '%${recipient}%'
   OR h.id LIKE '%${recipient}%'
ORDER BY m.date DESC
LIMIT ${limit};
SQL
    else
        sqlite3 -column -header "$CHAT_DB" << SQL
SELECT
    datetime(m.date/1000000000 + strftime('%s','2001-01-01'),'unixepoch','localtime') AS time,
    CASE WHEN m.is_from_me = 1 THEN 'Me' ELSE coalesce(h.id,'?') END AS from_,
    coalesce(m.text,'[attachment]') AS text
FROM message m
LEFT JOIN handle h ON m.handle_id = h.ROWID
WHERE m.text IS NOT NULL
ORDER BY m.date DESC
LIMIT ${limit};
SQL
    fi
}

# ──────────────────────────────────────────────
# list [-n N]
# Lists recent conversations with last-message preview.
# ──────────────────────────────────────────────
cmd_list() {
    require_chat_db
    local limit=15
    [[ "${1:-}" == "-n" || "${1:-}" == "--limit" ]] && { limit="${2:?}"; } || true

    sqlite3 -column -header "$CHAT_DB" << SQL
SELECT
    c.chat_identifier AS contact,
    datetime(max(m.date)/1000000000 + strftime('%s','2001-01-01'),'unixepoch','localtime') AS last_message,
    (SELECT substr(coalesce(m2.text,'[attachment]'), 1, 60)
     FROM message m2
     JOIN chat_message_join cmj3 ON m2.ROWID = cmj3.message_id
     WHERE cmj3.chat_id = c.ROWID
     ORDER BY m2.date DESC
     LIMIT 1) AS preview
FROM chat c
JOIN chat_message_join cmj ON c.ROWID = cmj.chat_id
JOIN message m ON cmj.message_id = m.ROWID
GROUP BY c.ROWID
ORDER BY max(m.date) DESC
LIMIT ${limit};
SQL
}

# ──────────────────────────────────────────────
# search <query> [-n N]
# Full-text search across message history.
# ──────────────────────────────────────────────
cmd_search() {
    require_chat_db
    [[ $# -ge 1 ]] || die "Usage: ${SCRIPT_NAME} search <query> [-n N]"
    local query="" limit=25
    while [[ $# -gt 0 ]]; do
        case "$1" in
            -n|--limit) limit="${2:?limit requires a value}"; shift 2 ;;
            *) query="$1"; shift ;;
        esac
    done
    [[ -n "$query" ]] || die "search query cannot be empty"

    sqlite3 -column -header "$CHAT_DB" << SQL
SELECT
    datetime(m.date/1000000000 + strftime('%s','2001-01-01'),'unixepoch','localtime') AS time,
    CASE WHEN m.is_from_me = 1 THEN 'Me' ELSE coalesce(h.id,'?') END AS from_,
    m.text
FROM message m
LEFT JOIN handle h ON m.handle_id = h.ROWID
WHERE m.text LIKE '%${query}%'
ORDER BY m.date DESC
LIMIT ${limit};
SQL
}

# ──────────────────────────────────────────────
# unread [-n N]
# Shows messages received since yesterday that haven't been read.
# ──────────────────────────────────────────────
cmd_unread() {
    require_chat_db
    local limit=50

    sqlite3 -column -header "$CHAT_DB" << SQL
SELECT
    datetime(m.date/1000000000 + strftime('%s','2001-01-01'),'unixepoch','localtime') AS time,
    coalesce(h.id,'?') AS from_,
    coalesce(m.text,'[attachment]') AS text
FROM message m
LEFT JOIN handle h ON m.handle_id = h.ROWID
WHERE m.is_from_me = 0
  AND m.is_read = 0
  AND m.text IS NOT NULL
ORDER BY m.date DESC
LIMIT ${limit};
SQL
}

# ──────────────────────────────────────────────
# export [recipient] [--days N] [-n N]
# Pulls conversations from chat.db and writes Obsidian notes to
# 03 Meetings/iMessage/ in the vault. One file per conversation.
# ──────────────────────────────────────────────
cmd_export() {
    require_chat_db
    local recipient="" days=7 limit=500
    while [[ $# -gt 0 ]]; do
        case "$1" in
            -n|--limit)  limit="${2:?limit requires a value}";  shift 2 ;;
            -d|--days)   days="${2:?days requires a value}";    shift 2 ;;
            *) recipient="$1"; shift ;;
        esac
    done

    echo "Exporting last ${days} day(s) of messages → ${MESSAGES_DIR}/"
    [[ -n "$recipient" ]] && echo "  Filtered to: ${recipient}"

    python3 - "$CHAT_DB" "$MESSAGES_DIR" "$VAULT_DIR" "$recipient" "$days" "$limit" << 'PYEOF'
import sqlite3, sys, os, re
from datetime import datetime

chat_db, messages_dir, vault_dir, recipient_filter, days, limit = \
    sys.argv[1], sys.argv[2], sys.argv[3], sys.argv[4], int(sys.argv[5]), int(sys.argv[6])

APPLE_EPOCH = 978307200  # Unix timestamp of 2001-01-01 (Apple's epoch)

os.makedirs(messages_dir, exist_ok=True)

conn = sqlite3.connect(f'file:{chat_db}?mode=ro', uri=True)
cur = conn.cursor()

# Build conversation list
since_clause = f"m.date/1000000000 + {APPLE_EPOCH} > strftime('%s','now') - {days}*86400"
filter_clause = f"AND c.chat_identifier LIKE '%{recipient_filter}%'" if recipient_filter else ""

cur.execute(f"""
    SELECT DISTINCT c.ROWID, c.chat_identifier, coalesce(c.display_name, '')
    FROM chat c
    JOIN chat_message_join cmj ON c.ROWID = cmj.chat_id
    JOIN message m ON cmj.message_id = m.ROWID
    WHERE {since_clause} {filter_clause}
    GROUP BY c.ROWID
    ORDER BY max(m.date) DESC
""")
conversations = cur.fetchall()

if not conversations:
    print(f"No conversations found in the last {days} day(s).")
    sys.exit(0)

# Pre-scan 04 People/ to match contacts to existing person notes
people_dir = os.path.join(vault_dir, '04 People')
person_notes = {}  # identifier fragment → note name (without .md)
if os.path.isdir(people_dir):
    for entry in os.scandir(people_dir):
        if entry.name.endswith('.md'):
            person_notes[entry.name[:-3].lower()] = entry.name[:-3]

def find_person_note(identifier, display_name):
    """Return wikilink target if a matching person note exists, else None."""
    candidates = [identifier.lower(), display_name.lower()] if display_name else [identifier.lower()]
    for c in candidates:
        for key, note in person_notes.items():
            if c in key or key in c:
                return note
    return None

now = datetime.now().strftime('%Y-%m-%dT%H:%M')
exported = 0

for chat_rowid, chat_id, display_name in conversations:
    cur.execute(f"""
        SELECT
            m.date/1000000000 + {APPLE_EPOCH} AS unix_ts,
            CASE WHEN m.is_from_me = 1 THEN 'Me'
                 ELSE coalesce(h.id, ?)
            END AS sender,
            coalesce(m.text, '[attachment]') AS text
        FROM message m
        LEFT JOIN handle h ON m.handle_id = h.ROWID
        JOIN chat_message_join cmj ON m.ROWID = cmj.message_id
        WHERE cmj.chat_id = ?
          AND m.date/1000000000 + {APPLE_EPOCH} > strftime('%s','now') - {days}*86400
        ORDER BY m.date ASC
        LIMIT {limit}
    """, (chat_id, chat_rowid))
    messages = cur.fetchall()

    if not messages:
        continue

    contact_label = display_name.strip() if display_name else chat_id
    person_note   = find_person_note(chat_id, display_name)
    contact_link  = f"[[{person_note}|{contact_label}]]" if person_note else contact_label

    safe_id  = re.sub(r'[^\w._-]', '-', chat_id).strip('-')
    outpath  = os.path.join(messages_dir, f"{safe_id}.md")

    with open(outpath, 'w', encoding='utf-8') as f:
        f.write(f"---\ncreated: {now}\nupdated: {now}\n")
        f.write(f"contact: \"{chat_id}\"\ntype: imessage\nunread: true\n---\n\n")
        f.write(f"> [!info] Conversation with {contact_link}\n")

        current_date = None
        for unix_ts, sender, text in messages:
            dt   = datetime.fromtimestamp(unix_ts)
            day  = dt.strftime('%Y-%m-%d')
            t    = dt.strftime('%H:%M')

            if day != current_date:
                current_date = day
                f.write(f"\n## {day}\n\n")

            clean = text.replace('\r', '').replace('\n', ' ').strip()
            f.write(f"**{t}** **{sender}**: {clean}\n")

    print(f"  → {outpath}")
    exported += 1

conn.close()
print(f"\nDone. {exported} conversation(s) exported to {messages_dir}/")
PYEOF
}

# ──────────────────────────────────────────────
# Main dispatch
# ──────────────────────────────────────────────
usage() {
    cat << EOF
iMessage CLI (macOS only)

Usage:
  ${SCRIPT_NAME} send <recipient> <message>        Send a message (phone number or Apple ID)
  ${SCRIPT_NAME} read [recipient] [-n N]           Read recent messages (default: 20)
  ${SCRIPT_NAME} list [-n N]                       List recent conversations (default: 15)
  ${SCRIPT_NAME} search <query> [-n N]             Search message history (default: 25)
  ${SCRIPT_NAME} unread                            Show unread messages
  ${SCRIPT_NAME} export [recipient] [-d N] [-n N]  Export to Obsidian notes (default: last 7 days)

Examples:
  ${SCRIPT_NAME} send "+15551234567" "Hey, running late"
  ${SCRIPT_NAME} send "friend@icloud.com" "See you at 7"
  ${SCRIPT_NAME} read "+15551234567" -n 50
  ${SCRIPT_NAME} list -n 20
  ${SCRIPT_NAME} search "dinner plans"
  ${SCRIPT_NAME} unread
  ${SCRIPT_NAME} export                            # all conversations, last 7 days
  ${SCRIPT_NAME} export "+15551234567" -d 30       # one contact, last 30 days
  ${SCRIPT_NAME} export -d 1                       # today only

Notes:
  - 'send' requires Messages.app to be open and signed in.
  - All other commands require Terminal Full Disk Access:
    System Settings → Privacy & Security → Full Disk Access
  - 'export' writes to: ${MESSAGES_DIR}/
EOF
}

case "${1:-}" in
    send)   shift; cmd_send   "$@" ;;
    read)   shift; cmd_read   "$@" ;;
    list)   shift; cmd_list   "$@" ;;
    search) shift; cmd_search "$@" ;;
    unread) shift; cmd_unread "$@" ;;
    export) shift; cmd_export "$@" ;;
    -h|--help|help|"") usage ;;
    *) die "Unknown command '${1}'. Run '${SCRIPT_NAME} help' for usage." ;;
esac
