#!/bin/bash
if [[ $(/usr/bin/id -u) -ne 0 ]]; then
    echo "-- Run command as sudo"
    exit
fi

USER_HOME=$(getent passwd $SUDO_USER | cut -d: -f6)

sudo rm ./config/xfce4/panel/*

set -x #echo on
sudo cp $USER_HOME/.config/gtk-3.0/gtk.css ./.config/gtk-3.0/
sudo cp $USER_HOME/.config/i3/ ./.config/ -R
sudo cp $USER_HOME/.p10k.zsh ./
sudo cp $USER_HOME/.zshrc ./
sudo cp $USER_HOME/.config/xfce4/panel/* ./.config/xfce4/panel/
sudo cp $USER_HOME/.config/xfce4/terminal/terminalrc ./.config/xfce4/terminal/
sudo cp $USER_HOME/.config/picom.conf ./.config/
sudo cp $USER_HOME/.config/rofi/* ./.config/rofi/
sudo cp $USER_HOME/.nanorc ./.nanorc
sudo cp $USER_HOME/.config/dunst/* ./.config/dunst/
sudo cp $USER_HOME/.local/share/xfce4/ ./.local/share/ -R
sudo cp $USER_HOME/Pictures/wallpaper.png ./Pictures/

sudo cp /etc/lightdm/lightdm-gtk-greeter.conf ./etc/lightdm/
