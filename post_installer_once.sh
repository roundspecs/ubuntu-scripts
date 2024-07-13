# Aliases
echo -e "\n== LOG: Setting up aliases =="
echo "alias update='sudo apt update -y && sudo apt upgrade -y && sudo snap refresh'" >>~/.bashrc
echo 'alias lb="echo 50 | sudo tee /sys/class/backlight/intel_backlight/brightness"' >>~/.bashrc

echo -e "\n== LOG: Setting default editor =="
sudo update-alternatives --config editor


