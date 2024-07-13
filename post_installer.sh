#!/bin/bash

# The commands that can be run multiple times are put here

# Snap packages
echo -e "\n== LOG: Installing snap packages =="
sudo snap refresh
sudo snap install --classic code
sudo snap install brave
sudo snap install --classic slack
sudo snap install discord
sudo snap install --classic obsidian
sudo snap install termdown
sudo snap install telegram-desktop

# APT packages
echo -e "\n== LOG: Installing APT packages =="
sudo apt update -y && sudo apt upgrade -y
sudo apt install gnome-shell-extension-manager -y
sudo apt install gnome-tweaks -y
sudo apt install neofetch -y
sudo apt install git -y
sudo apt install neovim -y
sudo apt install fonts-firacode -y
sudo apt install qbittorrent -y
sudo apt install yt-dlp -y
sudo apt install i3 -y
sudo apt install brightnessctl -y
sudo apt install ranger -y
sudo apt install i3blocks -y
sudo apt install feh -y
sudo apt install pavucontrol -y
sudo apt install redshift redshift-gtk -y
sudo apt install maim -y
sudo apt install picom -y
sudo apt install plocate -y
sudo apt install tree -y
sudo apt install rofi -y

# Git configuration
echo -e "\n== LOG: Configuring git =="
git config --global user.name "Zarif Muhtasim"
git config --global user.email "2502.zarif@gmail.com"
git config --global core.editor vim

# i3 setup
echo -e "\n== log: setting up i3 =="
cp -r i3/ ~/.config/

# dunst setup
echo -e "\n== log: setting up dunst =="
cp -r dunst/ ~/.config/

# rofi setup
echo -e "\n== log: setting up rofi =="
cp -r rofi/ ~/.config/

# Cleanup
echo -e "\n== LOG: Cleaning up =="
sudo apt autoremove -y
sudo apt autoclean -y

# Done
echo -e "\n== LOG: Post installation complete. Please restart your system. =="
