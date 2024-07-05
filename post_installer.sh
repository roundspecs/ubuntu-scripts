#!/bin/bash

# Snap packages
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
sudo apt update -y && sudo apt upgrade -y
sudo apt install gnome-shell-extension-manager -y
sudo apt install gnome-tweaks -y
sudo apt install neofetch -y
sudo apt install git -y
sudo apt install vim -y
sudo apt install fonts-firacode -y
sudo apt install qbittorrent -y
sudo apt install yt-dlp -y

# OBS
sudo apt install v4l2loopback-dkms
sudo add-apt-repository ppa:obsproject/obs-studio
sudo apt update
sudo apt install obs-studio

# Git configuration
git config --global user.name "Zarif Muhtasim"
git config --global user.email "2502.zarif@gmail.com"
git config --global core.editor vim

# Cleanup
sudo apt autoremove -y
sudo apt autoclean -y

# Aliases
echo "alias update='sudo apt update -y && sudo apt upgrade -y && snap refresh'" >>~/.bashrc
echo 'alias lb="echo 50 | sudo tee /sys/class/backlight/intel_backlight/brightness"' >>~/.bashrc

# Done
echo "Post installation complete. Please restart your system."
