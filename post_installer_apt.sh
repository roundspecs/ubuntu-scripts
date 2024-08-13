# APT packages
echo -e "\n== LOG: Installing APT packages =="
sudo apt update -y && sudo apt upgrade -y
sudo apt install neofetch git neovim fonts-firacode qbittorrent yt-dlp i3 brightnessctl ranger i3blocks feh pavucontrol redshift redshift-gtk maim picom plocate tree rofi stow -y
