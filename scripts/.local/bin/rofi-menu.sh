#!/bin/bash

options="Shutdown\nReboot\nSuspend\nHibernate\nLogout"
selected=$(echo -e $options | rofi -dmenu -p "Power Menu")

case $selected in
    Shutdown) systemctl poweroff ;;
    Reboot) systemctl reboot ;;
    Suspend) systemctl suspend ;;
    Hibernate) systemctl hibernate;;
    Logout) i3-msg exit ;;
esac

