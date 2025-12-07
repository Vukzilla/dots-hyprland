FILE=$(zenity --file-selection --file-filter="*.jpg *.jpeg *.png" --title="Choose a Wallpaper")

wal -i "$FILE"
swww img "$FILE" --transition-type any
