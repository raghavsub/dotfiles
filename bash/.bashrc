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

# enable completion
if [[ -f /usr/local/etc/bash_completion ]] ; then
    . /usr/local/etc/bash_completion
fi

# fzf
if [[ -f "$HOME"/.fzf.bash ]] ; then
    . "$HOME"/.fzf.bash
fi

# ls aliases
alias ls="ls -G"
alias la="ls -A"
alias ll="ls -Ahl"

# ssh agent forwarding in tmux
alias fixssh="eval "$(tmux show-environment -s SSH_AUTH_SOCK)""

# python webserver
alias serve="python3 -m http.server"
