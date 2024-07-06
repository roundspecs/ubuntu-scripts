#!/bin/bash

# Snap packages
echo "Installing snap packages"
sudo snap refresh
sudo snap install --classic code
sudo snap install brave
sudo snap install --classic slack
sudo snap install discord
sudo snap install --classic obsidian
sudo snap install termdown
sudo snap install telegram-desktop
sudo snap install obsidian --classic

# APT packages
echo "Installing APT packages"
sudo apt update -y && sudo apt upgrade -y
sudo apt install gnome-shell-extension-manager -y
sudo apt install gnome-tweaks -y
sudo apt install neofetch -y
sudo apt install git -y
sudo apt install vim -y
sudo apt install fonts-firacode -y
sudo apt install qbittorrent -y
sudo apt install yt-dlp -y
sudo apt install i3 -y
sudo apt install brightnessctl -y
sudo apt install ranger -y
sudo apt install i3blocks -y


# Git configuration
echo "Configuring git"
git config --global user.name "Zarif Muhtasim"
git config --global user.email "2502.zarif@gmail.com"
git config --global core.editor vim

# i3 setup
echo "Setting up i3"
# For permission issue with brightness: https://www.reddit.com/r/i3wm/comments/lzj5nc/comment/ky7752d/
cp -r i3/ ~/.config/

# Cleanup
echo "Cleaning up"
sudo apt autoremove -y
sudo apt autoclean -y

# Done
echo "Post installation complete. Please restart your system."
