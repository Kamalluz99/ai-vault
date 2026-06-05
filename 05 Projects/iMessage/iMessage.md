---
project: iMessage
summary: CLI tool for sending and reading iMessages from the macOS terminal via AppleScript and SQLite
started: 2026-06-05
updated: 2026-06-05T00:00
status: active
links: []
dependencies: [macOS, Messages.app, python3, sqlite3, osascript]
unread: true
---

> [!important] macOS only
> `send` requires Messages.app open and signed in to iMessage.
> `read`, `list`, `search`, `unread` require Terminal to have **Full Disk Access** — grant it in System Settings → Privacy & Security → Full Disk Access.

## Setup

```bash
# Make executable (one-time)
chmod +x imessage.sh

# Optional: add to PATH
ln -s "$(pwd)/imessage.sh" /usr/local/bin/imessage
```

## Commands

| Command | Description |
|---|---|
| `send <recipient> <message>` | Send an iMessage (phone number or Apple ID email) |
| `read [recipient] [-n N]` | Read recent messages, optionally filtered by contact |
| `list [-n N]` | List recent conversations with preview |
| `search <query> [-n N]` | Search all message history |
| `unread` | Show unread incoming messages |
| `export [recipient] [-d N] [-n N]` | Export conversations to Obsidian notes in `03 Meetings/iMessage/` |

## Usage examples

```bash
# Send a message
./imessage.sh send "+15551234567" "Hey, running late"
./imessage.sh send "friend@icloud.com" "See you at 7"

# Read last 50 messages with a contact
./imessage.sh read "+15551234567" -n 50

# List recent conversations
./imessage.sh list

# Search message history
./imessage.sh search "dinner plans"

# See unread messages
./imessage.sh unread

# Export all conversations from the last 7 days to the vault
./imessage.sh export

# Export one contact's last 30 days of messages
./imessage.sh export "+15551234567" -d 30

# Export today only
./imessage.sh export -d 1
```

## Export output format

Each conversation becomes a note at `03 Meetings/iMessage/<contact-id>.md`:

```
---
created: 2026-06-05T10:00
updated: 2026-06-05T10:00
contact: "+15551234567"
type: imessage
unread: true
---

> [!info] Conversation with [[John Doe|John Doe]]

## 2026-06-04

**10:30** **Me**: Hey, running late
**10:31** **+15551234567**: No worries, see you soon
```

If a matching note exists in `04 People/`, the contact is auto-linked as a wikilink.

## How it works

- **Sending**: calls `osascript` with AppleScript that targets `Messages.app`. Falls back to the SMS service if iMessage targeting fails.
- **Reading / searching**: queries `~/Library/Messages/chat.db` (SQLite) directly. macOS stores all iMessage and SMS history in this database. The `date` column is Apple's reference time (seconds since 2001-01-01), converted to local time in queries.
