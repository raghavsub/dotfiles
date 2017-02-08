#!/bin/bash

# variables

dir=~/dotfiles # dotfiles directory
files="hyper.js tmux.conf vimrc zshrc" # list of files/folders to symlink in homedir

echo "Changing to the $dir directory"
cd $dir
echo "...done"

for file in $files; do
    echo "Creating symlink to $file in home directory."
    ln -s $dir/$file ~/.$file
done
