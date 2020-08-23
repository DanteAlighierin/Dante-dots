#!/bin/bash

CACHE_DIR="$HOME/.cache"
IMG_DIR="$CACHE_DIR/anime_girls_holding_programming_language"
IMG_LINK="https://github.com/laynH/Anime-Girls-Holding-Programming-Books"

[[ -d $IMG_DIR ]] && (cd $IMG_DIR; git pull) || (git clone $IMG_LINK $IMG_DIR && git config pull.rebase false)

find $IMG_DIR -type f \( -iname \*.jpg -o -iname \*.png \) > ~/.cache/wallpaperdb
