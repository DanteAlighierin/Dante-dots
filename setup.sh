#!/bin/bash

if grep 'void' /etc/*-release
then sudo xbps-install -Su
then sudo xbps-install mesa-intel-dri sway font-firacode fish neovim Waybar swaybg swaylock icecat chromium qtfm ranger cmus htop slurp grip telegram-desktop mako vlc wlsunset wireguard-tools
fi

for i in */; do rm -rf ~/.config/$i ; ln -sf $(pwd)/$i ~/.config ; done
