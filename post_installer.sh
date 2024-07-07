#!/bin/bash

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
sudo snap install obsidian --classic

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

# Git configuration
echo -e "\n== LOG: Configuring git =="
git config --global user.name "Zarif Muhtasim"
git config --global user.email "2502.zarif@gmail.com"
git config --global core.editor vim

# i3 setup
echo -e "\n== LOG: Setting up i3 =="
# For permission issue with brightness: https://www.reddit.com/r/i3wm/comments/lzj5nc/comment/ky7752d/
CONFIG_DIR_LOC=$HOME/.config/
I3_DIR_LOC=i3/
cp -r $I3_DIR_LOC $CONFIG_DIR_LOC

# Cleanup
echo -e "\n== LOG: Cleaning up =="
sudo apt autoremove -y
sudo apt autoclean -y

# Done
echo -e "\n== LOG: Post installation complete. Please restart your system. =="
