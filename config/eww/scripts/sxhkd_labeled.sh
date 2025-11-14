#!/bin/bash
SXHKDRC="${HOME}/.config/sxhkd/sxhkdrc"

entries=()
desc=""

while IFS= read -r line; do
    if [[ "$line" =~ ^# ]]; then
        desc="${line#\#}"
        desc="${desc#"${desc%%[![:space:]]*}"}"
    elif [[ -n "$line" ]]; then
        shortcut="$line"
        read -r cmd
        cmd="${cmd#"${cmd%%[![:space:]]*}"}"
        entries+=("Shortcut: $shortcut\nDescription: $desc\nCommand: $cmd")
        desc=""
    fi
done < "$SXHKDRC"

idx_file="/tmp/sxhkd_labeled_idx"
if [[ ! -f "$idx_file" ]]; then
    echo 0 > "$idx_file"
fi

idx=$(<"$idx_file")
# Output the current entry
echo -e "${entries[$idx]}"

# Increment index
idx=$(( (idx + 1) % ${#entries[@]} ))
echo "$idx" > "$idx_file"
