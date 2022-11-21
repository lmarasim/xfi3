#!/bin/bash
if [[ $(/usr/bin/id -u) -ne 0 ]]; then
    echo "-- Run command as sudo"
    exit
fi

USER_HOME=$(getent passwd $SUDO_USER | cut -d: -f6)

sudo mkdir $USER_HOME/.config/
sudo mkdir $USER_HOME/.config/gtk-3.0/
sudo mkdir $USER_HOME/.config/xfce4/
sudo mkdir $USER_HOME/.config/xfce4/panel/
sudo mkdir $USER_HOME/.config/xfce4/terminal/
sudo rm $USER_HOME/.config/xfce4/panel/*
sudo mkdir $USER_HOME/.config/rofi/
sudo mkdir $USER_HOME/.config/dunst/
sudo mkdir $USER_HOME/.local/
sudo mkdir $USER_HOME/.local/share/
sudo mkdir $USER_HOME/Pictures/
sudo mkdir /etc/lightdm/
sudo mkdir /usr/local/
sudo mkdir /usr/local/share/


set -x #echo on
sudo cp ./.config/gtk-3.0/gtk.css $USER_HOME/.config/gtk-3.0/
sudo cp ./.config/i3/ $USER_HOME/.config/ -R
sudo cp ./.p10k.zsh $USER_HOME/
sudo cp ./.zshrc $USER_HOME/
sudo cp ./.config/xfce4/panel/* $USER_HOME/.config/xfce4/panel/
sudo cp ./.config/xfce4/terminal/terminalrc $USER_HOME/.config/xfce4/terminal/
sudo cp ./.config/picom.conf $USER_HOME/.config/
sudo cp ./.config/rofi/* $USER_HOME/.config/rofi/
sudo cp ./.nanorc $USER_HOME/.nanorc
sudo cp ./.config/dunst/* $USER_HOME/.config/dunst/
sudo cp ./.local/share/xfce4/ $USER_HOME/.local/share/ -R
sudo cp ./Pictures/wallpaper.png $USER_HOME/Pictures/

sudo cp ./etc/lightdm/lightdm-gtk-greeter.conf /etc/lightdm/
sudo cp ./Pictures/wallpaper.png /usr/share/
sudo cp ./fonts/ /usr/local/share/ -R

sudo chmod +x $USER_HOME/.config/i3/scripts/*

sudo chown -R $SUDO_USER $USER_HOME/.config/
sudo chown $SUDO_USER $USER_HOME/.zshrc
sudo chown $SUDO_USER $USER_HOME/.p10k.zsh
sudo chown $SUDO_USER $USER_HOME/.nanorc
sudo chown -R $SUDO_USER $USER_HOME/.config/dunst/
sudo chown -R $SUDO_USER $USER_HOME/.local/share/xfce4/
sudo chown -R $SUDO_USER $USER_HOME/Pictures/
