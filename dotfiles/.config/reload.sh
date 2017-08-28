#! /usr/bin/env sh

killall -q polybar
while pgrep -x polybar > /dev/null; do sleep 1; done

xrandr --output "eDP-1" --auto
polybar main &

if (xrandr | grep "DP-1 connected" > /dev/null)
then
    xrandr --output "DP-1" --auto --left-of eDP1
    polybar ext &
else
    xrandr --output "DP-1" --off
fi
