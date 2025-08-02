<div align="center">
    <h1>Vukzilla's Hyprland dotfiles</h1>
    <h3></h3>
</div>


<div align="center"> 

![](https://img.shields.io/github/last-commit/Vukzilla/dots-hyprland?&style=for-the-badge&color=FFB1C8&logoColor=D9E0EE&labelColor=292324)
![](https://img.shields.io/github/stars/Vukzilla/dots-hyprland?style=for-the-badge&logo=andela&color=FFB686&logoColor=D9E0EE&labelColor=292324)

</a>

</div>

<div align="center">
    <h2>• overview •</h2>
    <h3></h3>
</div>

<details>
<summary><strong>Notable features</strong></summary>

- #### Terminal colors adapt to wallpaper [Ctrl + Super + T] *(on supported terminals)*
- #### Custom Hyprland animations
- #### Screenshot and snipping tool
- #### Emoji picker launched with rofi *(Ctrl + V to paste the emoji)*
- #### GUI settings for:
  - Audio  
  - Bluetooth  
  - Internet  
  - Calendar  

</details>

<details>
<summary><strong>Software used</strong></summary>
<br>

| Software | Purpose |
  | ------------- | ------------- |
  | swww | Wallpaper utility |
  | rofi | Program launcher |
  | swaync | Notification daemon|
  | waybar | Status bar |
  | wlogout | Logout menu |

</details>

<details>
<summary><strong>Installation</strong></summary>
<br>

### Required pacman packages:

```
sudo pacman -S hyprland mission-center fcitx5 fcitx5-configtool fcitx5-gtk fcitx5-qt fcitx5-skk qt6ct qt5ct alacritty exa sdl2 glfw hypridle hyprcursor swww yad pipewire pipewire-pulse wireplumber xdg-desktop-portal xdg-desktop-portal-hyprland gtk3 fcitx5-configtool ttf-jetbrains-mono-nerd noto-fonts-cjk ttf-hack bluez bluez-utils blueman pavucontrol networkmanager network-manager-applet nautilus grim slurp jq wl-clipboard gnome-calendar hyprpicker hyprlock noto-fonts-emoji waybar swaync fish materia-gtk-theme qt5-wayland qt6-wayland
```

### Required AUR packages:
```
yay -S hyprshade python-pywal16 wlogout rofi-emoji neofetch
```

### Required terminal commands:
```bash
xdg-mime default org.gnome.Nautilus.desktop inode/directory
systemctl --user enable --now hypridle.service
sudo systemctl enable bluetooth.service
```

```bash
git clone https://github.com/Vukzilla/dots-hyprland
rm -rf dots-hyprland/README.md
cp -r ~/.config ~/.config-backup
rm -rf ~/.config/hypr ~/.config/alacritty ~/.config/fish ~/.config/rofi ~/.config/swaync ~/.config/waybar ~/.config/wlogout
mv dots-hyprland/* ~/.config
rm -rf dots-hyprland/
chmod +x ~/.config/hypr/scripts/*
hyprctl reload
```

### ❗Reboot after install❗

</details>

<div align="center">
    <h2>• video preview •</h2>
    <h3></h3>
</div>

https://github.com/user-attachments/assets/4efb01c8-c520-4690-83a9-5e478bf6100c
