#!/bin/bash

# Raghav Subramaniam
# .config/i3/lock.sh

cd "/home/rs/.config/i3/"

import -silent -window root lock.png;

convert lock.png -scale 10% -scale 1000% lock.png

i3lock -i lock.png --textcolor=c0c5ceff --ringcolor=343d46ff --keyhlcolor=ebcb8bff --bshlcolor=ebcb8bff --insidecolor=2b303bff --insidevercolor=2b303bff --ringvercolor=343d46ff --insidewrongcolor=2b303bff --ringwrongcolor=bf616aff --linecolor=2b303bff --separatorcolor=2b303bff;

rm lock.png
