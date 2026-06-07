#!/usr/bin/env bash
# Run this from your vault root: bash organize-root.sh
# Moves stray .md files from vault root into proper folders.
# Pass --dry-run to preview without moving.

set -euo pipefail
VAULT="${1:-$HOME/ai-vault}"
DRY_RUN=false
[[ "${2:-}" == "--dry-run" || "${1:-}" == "--dry-run" ]] && DRY_RUN=true && VAULT="$HOME/ai-vault"

# Files that should stay at root
KEEP=(CLAUDE.md PROJECTS.md README.md AGENTS.md)

# Known person names (move to 04 People/)
PEOPLE=(
  "Abd-Allah ibn Umar"
  "aafiya"
  "Abu Bakr"
  "Abu Hurayra"
  "Ali ibn Abi Talib"
  "Aisha"
  "Be-Alawi"
  "Companions"
  "Ibn Qayyim"
  "Ibn Taymiyya"
  "Khadijah"
  "Muhammad"
  "Umar ibn al-Khattab"
  "Uthman ibn Affan"
)

move_file() {
  local src="$1" dest_dir="$2"
  local filename
  filename="$(basename "$src")"
  mkdir -p "$dest_dir"
  if $DRY_RUN; then
    echo "[DRY RUN] $filename  →  ${dest_dir#$VAULT/}/"
  else
    mv "$src" "$dest_dir/$filename"
    echo "Moved: $filename  →  ${dest_dir#$VAULT/}/"
  fi
}

is_keep() {
  local f="$1"
  for k in "${KEEP[@]}"; do [[ "$f" == "$k" ]] && return 0; done
  return 1
}

is_person() {
  local stem="$1"
  for p in "${PEOPLE[@]}"; do [[ "$stem" == "$p" ]] && return 0; done
  return 1
}

# Read frontmatter tags/type to help classify
get_type() {
  local path="$1"
  python3 - "$path" <<'PYEOF'
import sys, re
path = sys.argv[1]
try:
    with open(path) as f:
        content = f.read(2000)
    if not content.startswith('---'):
        print('unknown')
        sys.exit()
    end = content.find('---', 3)
    fm = content[3:end] if end != -1 else ''
    if re.search(r'type:\s*person', fm, re.I):
        print('person')
    elif re.search(r'type:\s*place', fm, re.I):
        print('place')
    elif re.search(r'type:\s*research', fm, re.I):
        print('research')
    elif re.search(r'tags:.*\bpeople\b', fm, re.I) or re.search(r'-\s*people', fm):
        print('person')
    elif re.search(r'tags:.*\bplace\b', fm, re.I) or re.search(r'-\s*place', fm):
        print('place')
    else:
        print('unknown')
except Exception:
    print('unknown')
PYEOF
}

echo "=== Organizing vault root files in: $VAULT ==="
$DRY_RUN && echo "=== DRY RUN — no files will be moved ==="
echo ""

moved=0
skipped=0

for filepath in "$VAULT"/*.md; do
  [[ -f "$filepath" ]] || continue
  filename="$(basename "$filepath")"
  stem="${filename%.md}"

  # Skip files that belong at root
  is_keep "$filename" && continue

  # Check frontmatter type first
  ftype=$(get_type "$filepath")

  if [[ "$ftype" == "person" ]] || is_person "$stem"; then
    move_file "$filepath" "$VAULT/04 People"
    ((moved++))
  elif [[ "$ftype" == "place" ]]; then
    move_file "$filepath" "$VAULT/10 Places"
    ((moved++))
  elif [[ "$ftype" == "research" ]]; then
    move_file "$filepath" "$VAULT/06 Research"
    ((moved++))
  else
    # Heuristic: Quranic suras
    if [[ "$stem" == Surrat* || "$stem" == Surah* || "$stem" == Surat* ]]; then
      move_file "$filepath" "$VAULT/07 References"
      ((moved++))
    # Islamic concepts / terms — catch-all to 07 References
    else
      move_file "$filepath" "$VAULT/07 References"
      ((moved++))
    fi
  fi
done

echo ""
echo "Done. Files moved: $moved, skipped (root files): $skipped"
$DRY_RUN && echo "" && echo "Re-run without --dry-run to apply changes."
