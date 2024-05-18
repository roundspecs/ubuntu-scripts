#!/bin/bash

# Snap packages
sudo snap refresh
sudo snap install --classic code
sudo snap install brave
sudo snap install --classic slack
sudo snap install discord
sudo snap install inkscape

# APT packages
sudo apt update -y && sudo apt upgrade -y
sudo apt install gnome-shell-extension-manager neofetch gnome-tweaks git vim -y

# Git configuration
git config --global user.email "2502.zarif@gmail.com"
git config --global user.name "Zarif"

# Cleanup
sudo apt autoremove -y
sudo apt autoclean -y

# Aliases
echo "alias update='sudo apt update -y && sudo apt upgrade -y'" >>~/.bashrc
echo 'alias lb="echo 400 | sudo tee /sys/class/backlight/intel_backlight/brightness"' >>~/.bashrc

# Done
echo "Post installation complete. Please restart your system."
