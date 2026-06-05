#!/usr/bin/env bash
# iMessage CLI — macOS only. Requires Full Disk Access for Terminal (read commands)
# and Messages.app open (send command).

set -euo pipefail

CHAT_DB="${HOME}/Library/Messages/chat.db"
SCRIPT_NAME="$(basename "$0")"

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
# Main dispatch
# ──────────────────────────────────────────────
usage() {
    cat << EOF
iMessage CLI (macOS only)

Usage:
  ${SCRIPT_NAME} send <recipient> <message>   Send a message (phone number or Apple ID)
  ${SCRIPT_NAME} read [recipient] [-n N]      Read recent messages (default: 20)
  ${SCRIPT_NAME} list [-n N]                  List recent conversations (default: 15)
  ${SCRIPT_NAME} search <query> [-n N]        Search message history (default: 25)
  ${SCRIPT_NAME} unread                       Show unread messages

Examples:
  ${SCRIPT_NAME} send "+15551234567" "Hey, running late"
  ${SCRIPT_NAME} send "friend@icloud.com" "See you at 7"
  ${SCRIPT_NAME} read "+15551234567" -n 50
  ${SCRIPT_NAME} list -n 20
  ${SCRIPT_NAME} search "dinner plans"
  ${SCRIPT_NAME} unread

Notes:
  - 'send' requires Messages.app to be open and signed in.
  - 'read', 'list', 'search', 'unread' require Terminal to have Full Disk Access
    (System Settings → Privacy & Security → Full Disk Access).
EOF
}

case "${1:-}" in
    send)   shift; cmd_send   "$@" ;;
    read)   shift; cmd_read   "$@" ;;
    list)   shift; cmd_list   "$@" ;;
    search) shift; cmd_search "$@" ;;
    unread) shift; cmd_unread "$@" ;;
    -h|--help|help|"") usage ;;
    *) die "Unknown command '${1}'. Run '${SCRIPT_NAME} help' for usage." ;;
esac
