#!/bin/bash
SXHKDRC="${HOME}/.config/sxhkd/sxhkdrc"

entries=()
desc=""

while IFS= read -r line; do
    # Comment line = description
    if [[ "$line" =~ ^# ]]; then
        desc="${line#\#}"
        desc="${desc#"${desc%%[![:space:]]*}"}"  # trim leading spaces
    # Non-empty non-comment line = shortcut
    elif [[ -n "$line" ]]; then
        shortcut="$line"
        # Next line = command
        read -r cmd
        cmd="${cmd#"${cmd%%[![:space:]]*}"}"  # trim leading spaces
        # Add full labeled entry
        entries+=("Shortcut : $shortcut\nDescription : $desc") # you can add cmd also. but not required
#        entries+=("<span foreground='skyblue'><b>Shortcut:</b> $shortcut</span><br/><span foreground='white'><i>Description:</i> $desc</span><br/><span foreground='gray'><u>Command:</u> $cmd</span>")
        # Reset description for next
        desc=""
    fi
done < "$SXHKDRC"

# Cycle one entry at a time
idx_file="/tmp/sxhkd_labeled_idx"
if [[ ! -f "$idx_file" ]]; then
    echo 0 > "$idx_file"
fi

idx=$(<"$idx_file")
echo -e "${entries[$idx]}"  # -e to enable newlines

# Increment index
idx=$(( (idx + 1) % ${#entries[@]} ))
echo "$idx" > "$idx_file"
