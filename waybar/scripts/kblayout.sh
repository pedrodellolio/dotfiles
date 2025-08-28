#!/bin/bash

# Layouts to toggle between
layouts=("us" "br")
state_file="/tmp/current_kb_layout"

# Function to get current layout
get_layout() {
    setxkbmap -query | awk '/layout/{print $2}'
}

# If run with "toggle" argument, change layout
if [[ "$1" == "toggle" ]]; then
    current=$(get_layout)
    # Determine next layout
    for i in "${!layouts[@]}"; do
        if [[ "${layouts[$i]}" == "$current" ]]; then
            next_index=$(( (i + 1) % ${#layouts[@]} ))
            setxkbmap "${layouts[$next_index]}"
            echo "${layouts[$next_index]}" > "$state_file"
            exit 0
        fi
    done
else
    # Display short code for Waybar
    current=$(get_layout)
    # Show uppercase (EN / PT)
    if [[ "$current" == "us" ]]; then
        echo "EN"
    elif [[ "$current" == "br" ]]; then
        echo "PT"
    else
        echo "$current"
    fi
fi
