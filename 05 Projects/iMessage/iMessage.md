---
project: iMessage
summary: CLI tool for sending and reading iMessages from the macOS terminal via AppleScript and SQLite
started: 2026-06-05
updated: 2026-06-05
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
```

## How it works

- **Sending**: calls `osascript` with AppleScript that targets `Messages.app`. Falls back to the SMS service if iMessage targeting fails.
- **Reading / searching**: queries `~/Library/Messages/chat.db` (SQLite) directly. macOS stores all iMessage and SMS history in this database. The `date` column is Apple's reference time (seconds since 2001-01-01), converted to local time in queries.
