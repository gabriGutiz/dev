#!/bin/bash
set -xe

mapfile -t packages < <(
  grep -v '^#' "$MY_INSTALL/pkgs/base.pkgs" | grep -v '^$'
  grep -v '^#' "$MY_INSTALL/pkgs/langs.pkgs" | grep -v '^$'
  grep -v '^#' "$MY_INSTALL/pkgs/apps.pkgs" | grep -v '^$'
)
sudo pacman -S --noconfirm --needed "${packages[@]}"

$MY_INSTALL/post-pkg-install.sh
$MY_INSTALL/install-yay.sh
