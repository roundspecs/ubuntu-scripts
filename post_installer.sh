#!/bin/bash

# The commands that can be run multiple times are put here

# Snap packages
echo -e "\n== LOG: Installing snap packages =="
sudo snap refresh
sudo snap install brave
sudo snap install --classic slack
sudo snap install discord
sudo snap install --classic obsidian
sudo snap install termdown
sudo snap install telegram-desktop

# Git configuration
echo -e "\n== LOG: Configuring git =="
git config --global user.name "Zarif Muhtasim"
git config --global user.email "2502.zarif@gmail.com"
git config --global core.editor vim

# Cleanup
echo -e "\n== LOG: Cleaning up =="
sudo apt autoremove -y
sudo apt autoclean -y

# Done
echo -e "\n== LOG: Post installation complete. Please restart your system. =="
