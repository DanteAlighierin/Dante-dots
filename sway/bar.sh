#/usr/bin/bash


# Keyboard input name

keyboard_input_name="1:1:AT_Translated_Set_2_keyboard"



# Date and time

date_and_week=$(date "+%Y.%m.%d ")

current_time=$(date "+%H:%M")


# Network

ping=$(ping -c 1 www.google.es | tail -1| awk '{print $4}' | cut -d '/' -f 2 | cut -d '.' -f 1)


# Others

#language=$(swaymsg -t get_inputs | grep -m1 'xkb_active_layout_name' | cut -d '\"' -f4)
language=$(swaymsg -t get_inputs | grep -m1 "xkb_active_layout_name" | cut -d '"' -f4)

echo " ⌨ $language  ($ping ms) $date_and_week $current_time"
