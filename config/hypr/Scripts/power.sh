#!/bin/bash

#### Options ###
power_off="⏻  Shutdown"
reboot="󰜉  Reboot"
lock_screen="   Lock Screen"
suspend="  Suspend"
hibernate="󰒲   Hibernate"
log_out="󰈆  Log Out"

# Options passed to fuzzel
options="$power_off\n$reboot\n$suspend\n$hibernate\n$log_out\n$lock_screen"
lines="$(echo "$options" | grep -oF '\n' | wc -l)"
rofi_command="fuzzel -d -w 14 -l $((lines+1))"
chosen="$(echo -e "$options" | $rofi_command )"
case $chosen in
    "$lock_screen")
        hyprlock 
        ;;    
    "$power_off")
        systemctl poweroff
        ;;
    "$reboot")
        systemctl reboot
        ;;
    "$suspend")
	hyprlock && systemctl suspend
        ;;
    "$hibernate")
        # lock?
	systemctl hibernate
        ;;
    "$log_out")
	hyprctl dispatch exit
        ;;
esac

