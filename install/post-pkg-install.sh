#!/bin/bash
set -xe

sudo npm in --global yarn -y

flatpak remote-add --if-not-exists flathub https://dl.flathub.org/repo/flathub.flatpakrepo

## zen
flatpak install flathub app.zen_browser.zen -y

## zsh
wget -O ~/install-ohmyz.sh https://install.ohmyz.sh
sh ~/install-ohmyz.sh
