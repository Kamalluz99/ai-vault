#!/usr/bin/env bash
# Runs when Claude stops. Appends a session-end marker to today's daily note
# if any vault files were touched this session (detected via auto-log entries).

VAULT="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
NOTE_DIR="$VAULT/02 Daily/$(date '+%Y/%m')"
NOTE_PATH="$NOTE_DIR/$(date '+%m-%d-%y %a').md"

# Only act if today's note exists and has auto-log entries
[[ -f "$NOTE_PATH" ]] || exit 0
grep -q "^## auto-log" "$NOTE_PATH" || exit 0

# Update the 'updated' frontmatter timestamp
NOW=$(date '+%Y-%m-%dT%H:%M')
python3 -c "
import sys, re
path, now = sys.argv[1], sys.argv[2]
with open(path) as f:
    content = f.read()
content = re.sub(r'^updated:.*$', 'updated: ' + now, content, flags=re.MULTILINE)
with open(path, 'w') as f:
    f.write(content)
" "$NOTE_PATH" "$NOW"
