## Personal backup of my i3-gaps + xfce4-panel setup

![null](https://i.imgur.com/HaZbRmK.png)
              
| Saved configs:                       |                               |
|--------------------------------------|-------------------------------|
| ~/.config/gtk-3.0/gtk.css            | mostly xfce4-panel styles     |
| ~/.config/i3/                        | i3wm user configs/scripts     |
| ~/.p10k.zsh                          | zsh shell custom theme config |
| ~/.zshrc                             | zsh shell config              |
| ~/.config/xfce4/panel/               | xfce4-panel config            |
| ~/.config/xfce4/terminal/terminalrc  | xfce4-terminal config         |
| ~/.config/picom.conf                 | picom compositor config       |
| ~/.config/rofi/                      | rofi menu theme config        |
| ~/.config/dunst/dunstrc              | dunst notification config     |
| /etc/lightdm/lightdm-gk-greeter.conf | lightdm gtk greeter config    |



## Full installation on arch-based systems:

  1. log into i3 as your non-root user
  1. generate user config for i3-gaps


Install yay:
```sh
sudo pacman -S --needed git base-devel && git clone https://aur.archlinux.org/yay.git && cd yay && makepkg -si
```

Install packages with yay:
```sh
yay -Syu --needed  acpi arandr archlinux-xdg-menu awesome-terminal-fonts dex dmenu dunst file-roller galculator gtk-engine-murrine gvfs gvfs-afc gvfs-gphoto2 gvfs-mtp gvfs-nfs gvfs-smb power-profiles-daemon i3-gaps i3lock imagemagick jq lxappearance-gtk3 mpv network-manager-applet numlockx pavucontrol picom playerctl polkit-gnome rofi scrot sysstat thunar thunar-archive-plugin thunar-volman tumbler xbindkeys xdg-user-dirs-gtk xfce4-terminal xorg-xbacklight xorg-xdpyinfo ttf-ubuntu-font-family ttf-cascadia-code autotiling xfce4-panel xfce4-pulseaudio-plugin xfce4-sensors-plugin xfce4-cpufreq-plugin xfce4-screenshooter xfce4-clipman-plugin xfce4-panel-profiles lxtask-gtk3 pinta dotnet-runtime-6.0 firefox-developer-edition google-chrome zsh arc-gtk-theme qogir-icon-theme feh neofetch github-cli xorg-xinput
```

Install oh-my-zsh, zsh-autosuggestions, p10k theme:
```sh
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
```
```sh
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
```
```sh
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k
```

## Applying full configuration:

  1. git clone https://github.com/lmarasim/xfi3.git
  1. sudo ./install.sh to load backup config
  1. log out & log back in for the new startup apps
  1. xfce4-panel-profiles load panel


To fix screen tearing, vsync can be enabled in ~/.config/picom.conf

Wallpaper is set to ~/Pictures/wallpaper.png

## To update backups:

  1. sudo ./save.sh
  1. xfce4-panel-profiles save panel

