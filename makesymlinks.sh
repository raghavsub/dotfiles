#!/bin/bash

dir=~/dotfiles

files="bashrc
    config/dunst/dunstrc
    config/i3/config
    config/i3/lock.sh
    config/i3/polybar
    config/mopidy/mopidy.conf
    config/streamlink/config
    config/zathura/zathurarc
    vimrc
    Xresources"

for file in $files; do
    echo "Creating symlink to $file in home directory."
    ln -s $dir/$file ~/.$file
done
