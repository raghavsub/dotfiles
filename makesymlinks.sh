#!/bin/bash

dir=~/Dropbox/Workspace/dotfiles

files="bashrc
    bash_profile
    config/compton.conf
    config/dunst/dunstrc
    config/i3/config
    config/mopidy/mopidy.conf
    config/polybar/config
    config/streamlink/config
    config/termite/config
    config/zathura/zathurarc
    newsbeuter/config
    newsbeuter/urls
    vimrc
    xinitrc
    xserverrc
    Xresources"

for file in $files; do
    echo "Creating symlink to $file in home directory."
    ln -s $dir/$file ~/.$file
done
