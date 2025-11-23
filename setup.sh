#!/bin/bash
set -xe

export MY_DEV_PATH="$HOME/.local/dev"
export MY_INSTALL="$MY_DEV_PATH/install"
export PATH="$MY_DEV_PATH/bin:$PATH"

mkdir -p $HOME/.config
mkdir -p $HOME/.local

$MY_INSTALL/install-all.sh

chsh -s /usr/bin/zsh

$HOME/local/bin/my-set-home
