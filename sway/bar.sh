#/usr/bin/bash


# Keyboard input name

keyboard_input_name="1:1:AT_Translated_Set_2_keyboard"



# Date and time

#date_and_week=$(date "+%m.%d ")

current_time=$(date "+%a %F %H:%M")


# Network

ping=$(ping -c 1 www.ya.ru | tail -1| awk '{print $4}' | cut -d '/' -f 2 | cut -d '.' -f 1)



# Others

#language=$(swaymsg -t get_inputs | grep -m1 'xkb_active_layout_name' | cut -d '\"' -f4)
language=$(swaymsg -t get_inputs | grep -m1 "xkb_active_layout_name" | cut -d '"' -f4)
#language=$(swaymsg -t get_inputs | jq -r '.[] | select(.identifier == "1578:16641:MOSART_Semi._2.4G_Keyboard_Mouse") | .xkb_active_layout_name[0:3]')
#language=$(swaymsg -t get_inputs -r | jq -r '.[] | select(.identifier | .identifier == "1578:16641:MOSART_Semi._2.4G_Keybord_Mouse") | .xkb_active_layout_name[0:3]')

echo " ⌨ $language  ($ping ms) $current_time"
