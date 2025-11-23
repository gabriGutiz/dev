#!/bin/bash
set -xe

sudo pacman -S --needed git base-devel
git clone https://aur.archlinux.org/yay.git /tmp/yay
cd /tmp/yay
makepkg -si
cd -

yay -Y --gendb
yay -Syu --devel

####### yay packages
declare -a pkgs=(
    "xdg-terminal-exec"
    "xdg-desktop-portal-gtk"
    "xdg-desktop-portal-hyprland"
)

for p in "${pkgs[@]}"
do
    yay -Sy --noconfirm --needed $p
done

