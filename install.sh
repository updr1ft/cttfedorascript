#!/bin/bash
sudo dnf install -y sddm
sudo systemctl enable sddm
sudo systemctl set-default graphical.target
sudo dnf install -y git
git clone https://github.com/christitustech/fedora-titus
mkdir ~/.config
cd fedora-titus
cp bg.jpg ~/.config
mv dotconfig/* ~/.config/
sudo dnf install -y bspwm dconf-editor kitty picom polybar rofi sxhkd thunar arandr python3-pip lxappearance network-manager-applet gedit vim nitrogen firefox
mv .* ~
cd rpm-packages/
sudo dnf install -y ocs-url-3.1.0-1.fc20.x86_64.rpm
sudo dnf install -y fontawesome-fonts fontawesome-fonts-web
cd
git clone https://github.com/ryanoasis/nerd-fonts
cd nerd-fonts
sudo ./install.sh
