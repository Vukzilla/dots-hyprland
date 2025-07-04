# dots-hyprland

<img src=images/1.png>
<img src=images/2.png>
<img src=images/3.png>

### Features:
- #### Terminal colors adapt to wallpaper ***(on supported terminals)***
- #### Custom hyprland animations
- #### GUI settings for audio, bluetooth, internet and calendar

### Used programs:
- #### Program launcher - rofi
- #### Notification daemon - swaync
- #### Status bar - waybar
- #### Logout menu - wlogout

### Required pacman packages:
>fcitx5 fcitx5-configtool fcitx5-gtk fcitx5-qt fcitx5-skk qt6ct qt5ct sdl2 glfw hypridle swww yad pipewire wireplumber xdg-desktop-portal xdg-desktop-portal-hyprland gtk3 fcitx5-configtool ttf-jetbrains-mono-nerd blueman pavucontrol networkmanager network-manager-applet nautilus grim slurp jq wl-clipboard gnome-calendar hyprpicker hyprlock

### Required AUR packages:
> hyprshade python-pywal16 wlogout

### Required terminal commands:
>xdg-mime default org.gnome.Nautilus.desktop inode/directory
>systemctl --user enable --now hypridle.service
>chmod +x ~/.config/hypr/scripts/*
