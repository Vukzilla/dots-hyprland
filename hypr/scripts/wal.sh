#!/bin/bash

#NOTE this script was made using chatGPT :<

WALLPAPER_DIR="$HOME/Pictures/wallpapers"
WAL_CACHE="$HOME/.cache/wal"
WAL_COLORS="$WAL_CACHE/colors-alacritty.toml"
ALACRITTY_CONFIG="$HOME/.config/alacritty/alacritty.toml"
BACKUP="$ALACRITTY_CONFIG.bak"

# Pick a wallpaper using yad
FILE=$(find "$WALLPAPER_DIR" -type f \( -iname '*.jpg' -o -iname '*.png' -o -iname '*.jpeg' \) |
  yad --list --column="Wallpapers" --image --preview --file --width=900 --height=700 --title="Pick a Wallpaper")

if [[ -z "$FILE" ]]; then
  echo "No wallpaper selected. Exiting."
  exit 1
fi

# Run wal to generate colors automatically
wal -i "$FILE"

# Set wallpaper with swww
swww img "$FILE" --transition-type any

# Check for necessary files
if [[ ! -f "$WAL_COLORS" ]]; then
  echo "Pywal colors file not found: $WAL_COLORS"
  exit 1
fi

if [[ ! -f "$ALACRITTY_CONFIG" ]]; then
  echo "Alacritty config not found: $ALACRITTY_CONFIG"
  exit 1
fi

# Backup original Alacritty config once (if not backed up before)
if [[ ! -f "$BACKUP" ]]; then
  cp "$ALACRITTY_CONFIG" "$BACKUP"
  echo "Backup created at $BACKUP"
fi

# Replace [colors] section in Alacritty config with pywal colors
awk '
  BEGIN {skip=0}
  /^\[colors/ {skip=1; next}
  /^\[/ && skip==1 {skip=0}
  skip==0 {print}
' "$ALACRITTY_CONFIG" >"$ALACRITTY_CONFIG.tmp"

echo -e "\n" >>"$ALACRITTY_CONFIG.tmp"
cat "$WAL_COLORS" >>"$ALACRITTY_CONFIG.tmp"

mv "$ALACRITTY_CONFIG.tmp" "$ALACRITTY_CONFIG"
