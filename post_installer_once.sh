# Aliases
echo "alias update='sudo apt update -y && sudo apt upgrade -y && snap refresh'" >>~/.bashrc
echo 'alias lb="echo 50 | sudo tee /sys/class/backlight/intel_backlight/brightness"' >>~/.bashrc