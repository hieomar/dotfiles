#!/bin/sh

CHOSEN=$(printf "🔒 Lock\n🔄 Suspend\n🔁 Reboot\n⏻ Shutdown\n🚪 Log Out" | rofi -dmenu -i -p "Power Menu" -theme ~/.config/rofi/power.rasi)

case "$CHOSEN" in
    "🔒 Lock") hyprlock ;;
    "🔄 Suspend") systemctl suspend ;;
    "� Reboot") reboot ;;
    "⏻ Shutdown") poweroff ;;
    "🚪 Log Out") swaymsg exit ;;
    *) exit 1 ;;
esac