#!/usr/bin/env bash
killall -q polybar
while pgrep -u "$UID" -x polybar >/dev/null; do sleep 0.2; done


## Change for the right monitor
primary=$(polybar --list-monitors | awk '/primary/ {print $1}' | sed 's/://')
[ -z "$primary" ] && primary=$(polybar --list-monitors | head -n1 | cut -d: -f1)


for m in $(polybar --list-monitors | cut -d: -f1); do
  if [ "$m" = "$primary" ]; then
    MONITOR="$m" polybar vicari &
  else
    MONITOR="$m" polybar vicari_notray &
  fi
done





# Launch one bar per monitor
#for m in $(polybar --list-monitors | cut -d: -f1); do
#  if [ "$m" = "DP-2" ]; then
#    TRAY_POS=right SCREEN_LABEL="LAP" MONITOR="$m" polybar vicari &
#  else
#    TRAY_POS=none  SCREEN_LABEL="EXT" MONITOR="$m" polybar vicari &
#  fi
#done

