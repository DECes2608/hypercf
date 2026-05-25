#!/bin/bash
CLASS=$(hyprctl activewindow -j | jq -r '.class')
TITLE=$(hyprctl activewindow -j | jq -r '.title')
sleep 0.1
notify-send "Active Window" "$(printf 'class: %s\ntitle: %s' "$CLASS" "$TITLE")"
