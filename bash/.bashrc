# interactive usage
case $- in
    *i*) ;;
    *) return ;;
esac

# editor
export EDITOR=vim

# history
HISTCONTROL=ignoreboth
HISTSIZE=1000
HISTFILESIZE=2000
shopt -s histappend

# prompt
PS1="\[\e[37m\]\W\[\e[0m\] $ "

# ls aliases
alias ls="ls -G"
alias la="ls -A"
alias ll="ls -Ahl"

# enable completion
if [[ -f /usr/local/etc/bash_completion ]] ; then
    . /usr/local/etc/bash_completion
fi

# fzf
if [[ -f "$HOME"/.fzf.bash ]] ; then
    . "$HOME"/.fzf.bash
fi
