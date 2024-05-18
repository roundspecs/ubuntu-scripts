#!/bin/bash

sudo snap refresh
sudo snap install --classic code
sudo snap install brave
sudo snap install --classic slack
sudo snap install discord
sudo snap install inkscape

sudo apt update -y && sudo apt upgrade -y
sudo apt install gnome-shell-extension-manager neofetch gnome-tweaks -y
