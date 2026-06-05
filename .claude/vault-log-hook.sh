#!/usr/bin/env bash
# Appends a timestamped bullet to today's daily note whenever a vault file is written/edited.
# Derive vault root from this script's location (.claude/ is one level inside the vault)
VAULT="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"

FILE=$(jq -r '.tool_input.file_path // empty' 2>/dev/null)
[[ -z "$FILE" || "$FILE" == "null" ]] && exit 0

# Only act on files inside the vault
[[ "$FILE" != "$VAULT"/* ]] && exit 0

REL="${FILE#$VAULT/}"

# Skip daily notes themselves to prevent loops
[[ "$REL" == 02\ Daily/* ]] && exit 0

# Today's daily note path: 02 Daily/YYYY/MM/MM-DD-YY Ddd.md
NOTE_DIR="$VAULT/02 Daily/$(date '+%Y/%m')"
NOTE_PATH="$NOTE_DIR/$(date '+%m-%d-%y %a').md"
mkdir -p "$NOTE_DIR"

# Bootstrap note if it doesn't exist yet
if [[ ! -f "$NOTE_PATH" ]]; then
    NOW=$(date '+%Y-%m-%dT%H:%M')
    python3 -c "
import sys
now = sys.argv[1]
content = '---\ncreated: ' + now + '\nupdated: ' + now + '\nunread: true\n---\n\n## auto-log\n\n## TODO for next session\n'
with open(sys.argv[2], 'w') as f:
    f.write(content)
" "$NOW" "$NOTE_PATH"
fi

# Insert timestamped bullet after ## auto-log header (or append if missing)
python3 -c "
import sys
path, rel, ts = sys.argv[1], sys.argv[2], sys.argv[3]
bullet = '- ' + ts + ' \`' + rel + '\`\n'
with open(path) as f:
    lines = f.readlines()
for i, line in enumerate(lines):
    if line.strip() == '## auto-log':
        lines.insert(i + 1, bullet)
        break
else:
    lines.append('\n## auto-log\n' + bullet)
with open(path, 'w') as f:
    f.writelines(lines)
" "$NOTE_PATH" "$REL" "$(date '+%H:%M')"
