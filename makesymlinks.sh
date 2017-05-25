#!/bin/bash

dir=~/Dropbox/Workspace/dotfiles

files="bashrc
    bash_profile
    config/compton.conf
    config/dunst/dunstrc
    config/i3/config
    config/mopidy/mopidy.conf
    config/newsbeuter/config
    config/newsbeuter/urls
    config/polybar/config
    config/termite/config
    config/user-dirs.dirs
    tmux.conf
    vimrc
    xinitrc
    xserverrc
    Xresources"

for file in $files; do
    echo "Creating symlink to $file in home directory."
    ln -s $dir/$file ~/.$file
done
