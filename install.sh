#!/bin/bash

dotfiles=`pwd`

echo "Installing dependities with yay..."
yay -S cava dunst hyprland hyprpaper hyprshot kitty waybar copyq nemo gnome-calculator gnome-calendar polkit-gnome pavucontrol chromium ponymix xdg-desktop-portal-hyprland wofi
echo "Done!"
echo 

echo "Removing folders from .config..."
cd ~/.config/
echo "Folders to remove: `ls -1 $dotfiles/.config | xargs echo`"
ls -1 $dotfiles/.config | xargs rm -rf 
echo "Done!"
echo

echo "Moving configurations files into .config..."
cp $dotfiles/.config/* ~/.config/
echo "Installation done!"
