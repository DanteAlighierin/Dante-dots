#!/bin/bash

WALLPAPER="$(shuf -n 1 ~/.cache/wallpaperdb)"

swaymsg output "*" background $WALLPAPER fit
