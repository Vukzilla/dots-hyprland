#!/bin/bash

if command -v yay &>/dev/null; then
  PKG_MGR="yay"
elif command -v paru &>/dev/null; then
  PKG_MGR="paru"
else
  echo "Neither yay nor paru is installed. Please install one before running the script."
  exit 1
fi

sudo pacman -S --needed hyprland mission-center fcitx5 fcitx5-configtool fcitx5-gtk fcitx5-qt fcitx5-skk qt6ct qt5ct alacritty exa sdl2 glfw hypridle hyprcursor swww yad pipewire pipewire-pulse wireplumber xdg-desktop-portal xdg-desktop-portal-hyprland gtk3 fcitx5-configtool ttf-jetbrains-mono-nerd noto-fonts-cjk ttf-hack bluez bluez-utils blueman pavucontrol networkmanager network-manager-applet nautilus grim slurp jq wl-clipboard gnome-calendar hyprpicker hyprlock noto-fonts-emoji waybar swaync fish materia-gtk-theme qt5-wayland qt6-wayland fastfetch polkit-gnome wofi

$PKG_MGR -S --needed hyprshade python-pywal16 wlogout emote

xdg-mime default org.gnome.Nautilus.desktop inode/directory
systemctl --user enable --now hypridle.service
sudo systemctl enable bluetooth.service

rm -f README.md
rm -f LICENSE

sudo cp -r ~/.config ~/.config-backup
sudo chown -R $USER:$(id -gn $USER) ~/.config-backup

rm -rf ~/.config/hypr ~/.config/alacritty ~/.config/fish ~/.config/wofi ~/.config/swaync ~/.config/waybar ~/.config/wlogout ~/.config/fastfetch
shopt -s dotglob
mv ./* ~/.config
shopt -u dotglob
rm -rf ../dots-hyprland/
chmod +x ~/.config/hypr/scripts/*

hyprctl reload
hyprshade on vibrance

if pgrep waybar >/dev/null; then
  pkill waybar
  sleep 1
fi

waybar >/dev/null 2>&1 &
