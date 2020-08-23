# Change this according to your device
################
# Variables
################

# Keyboard input name
keyboard_input_name="1:1:AT_Translated_Set_2_keyboard"

# Date and time
date=$(date "+%Y/%m/%d")
current_time=$(date "+%H:%M")

#############
# Commands
#############

# battery_charge=$(~/.config/sway/scripts/battery_bar.sh)
battery_charge=$(cat /sys/class/power_supply/BAT0/capacity)%
acpi_status=$(acpi --ac-adapter | awk '{print $3;}')

loadavg_5min=$(cat /proc/loadavg | awk -F ' ' '{print $2}')

online_status=$(~/.config/sway/scripts/check_connection.sh)

kernel_ver=$(uname -r)

[[ $acpi_status = "on-line" ]] && battery_status="Charging: " || battery_status="Battery: "

echo -e "$kernel_ver || $online_status || CPU: $loadavg_5min || $battery_status$battery_charge || $date $current_time ||"
