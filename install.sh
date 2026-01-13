#!/bin/bash
mkdir "Waybar-Backup"
cp -r ~/.config/waybar ~/.config/waybar-backup
sudo rm -r ~/.config/waybar
cp -r "$(pwd)" ~/.config/waybar
chmod +x ~/.config/waybar/scripts/*.sh
chmod +x install.sh
echo "Waybar configuration installed to ~/.config/waybar"
sudo systemctl --user restart waybar
echo "Waybar restarted"
echo "Installation complete!"
exit