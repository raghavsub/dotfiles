# Raghav Subramaniam
# .bashrc

case $- in
    *i*) ;;
      *) return;;
esac

# editor
export EDITOR=vim

# vim mode
set -o vi

# history
HISTCONTROL=ignoreboth
HISTSIZE=1000
HISTFILESIZE=2000
shopt -s histappend

# prompt
PS1="\[\e[32m\]at \[\e[31m\]\h \[\e[32m\]in \[\e[34m\]\w\[\e[0m\]\n$ "

# ls aliases
alias ls="ls --color=auto"
alias la="ls -A"
alias ll="ls -Ahl"

# cd aliases
alias ..="cd .."
alias ...="cd ../.."
alias ....="cd ../../.."

# enable completion
if [[ -f /usr/share/bash-completion/bash_completion ]] ; then
    . /usr/share/bash-completion/bash_completion
fi

# fzf
if [[ -f "$HOME"/.fzf.bash ]] ; then
    . "$HOME"/.fzf.bash
fi