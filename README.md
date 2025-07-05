<div align="center">
    <h1>Vukzilla's Hyprland dotfiles</h1>
    <h3></h3>
</div>


<div align="center"> 

![](https://img.shields.io/github/last-commit/Vukzilla/dots-hyprland?&style=for-the-badge&color=FFB1C8&logoColor=D9E0EE&labelColor=292324)
![](https://img.shields.io/github/stars/Vukzilla/dots-hyprland?style=for-the-badge&logo=andela&color=FFB686&logoColor=D9E0EE&labelColor=292324)
[![](https://img.shields.io/github/repo-size/Vukzilla/dots-hyprland?color=CAC992&label=SIZE&logo=googledrive&style=for-the-badge&logoColor=D9E0EE&labelColor=292324)](https://github.com/end-4/hyprland)
</a>

</div>

<div align="center">
    <h2>• overview •</h2>
    <h3></h3>
</div>

<details>
<summary><strong>Notable features</strong></summary>

- #### 🎨 Terminal colors adapt to wallpaper *(on supported terminals)*
- #### 🎞️ Custom Hyprland animations
- #### 📷 Screenshot and snipping tool
- #### 😀 Emoji picker launched with rofi *(Ctrl + V to paste the emoji)*
- #### 🛠️ GUI settings for:
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

```bash
git clone https://github.com/Vukzilla/dots-hyprland
rm -rf dots-hyprland/images
rm dots-hyprland/README.md
mv dots-hyprland/* ~/.config
rm -rf dots-hyprland/
```

### Required pacman packages:

```
sudo pacman -S fcitx5 fcitx5-configtool fcitx5-gtk fcitx5-qt fcitx5-skk qt6ct qt5ct sdl2 glfw hypridle swww yad pipewire wireplumber xdg-desktop-portal xdg-desktop-portal-hyprland gtk3 fcitx5-configtool ttf-jetbrains-mono-nerd blueman pavucontrol networkmanager network-manager-applet nautilus grim slurp jq wl-clipboard gnome-calendar hyprpicker hyprlock noto-fonts-emoji
```

### Required AUR packages:
```
yay -S hyprshade python-pywal16 wlogout rofi-emoji
```

### Required terminal commands:
```bash
xdg-mime default org.gnome.Nautilus.desktop inode/directory
systemctl --user enable --now hypridle.service
chmod +x ~/.config/hypr/scripts/*
```

</details>

<div align="center">
    <h2>• screenshots •</h2>
    <h3></h3>
</div>

<img src=images/1.png>
<img src=images/2.png>
<img src=images/3.png>
