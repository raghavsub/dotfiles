#! /usr/bin/env sh

killall -q polybar
while pgrep -x polybar > /dev/null; do sleep 1; done

xrandr --output eDP1 --auto
polybar main &

if (xrandr | grep "DP1 connected" > /dev/null)
then
    xrandr --output DP1 --auto --left-of eDP1
    polybar ext &
else
    xrandr --output DP1 --off
fi
