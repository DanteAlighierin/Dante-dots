#!/bin/bash

#if grep 'void' /etc/*-release
#then sudo xbps-install -Su
#then sudo xbps-install mpv mesa-intel-dri sway font-firacode fish neovim Waybar swaybg swaylock icecat chromium qtfm ranger cmus htop slurp grip telegram-desktop mako vlc wlsunset wireguard-tools go
#then git clone https://github.com/Difrex/gosway
#then cd gosway/swaymgr
#then go get -t -v ./...
#then go build -o ~/.local/bin/swaymgr
#fi

for i in */; do rm -rf ~/.config/$i ; ln -sf $(pwd)/$i ~/.config ; done
