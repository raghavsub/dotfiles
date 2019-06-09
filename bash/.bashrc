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
PS1="\[\e[34m\]\W\[\e[0m\] $ "

# enable completion
if [[ -f /usr/local/etc/bash_completion ]] ; then
    . /usr/local/etc/bash_completion
fi

# ruby
if [[ -d /usr/local/opt/ruby/bin ]] ; then
    export PATH="/usr/local/opt/ruby/bin:"$PATH""
fi

# fzf
if [[ -f "$HOME"/.fzf.bash ]] ; then
    . "$HOME"/.fzf.bash
fi

# ls colors
case "$(uname -s)" in
    Linux*) alias ls="ls --color=auto";;
    Darwin*) alias ls="ls -G";;
esac

# ls aliases
alias la="ls -A"
alias ll="ls -Ahl"

# ssh agent forwarding in tmux
alias fixssh='eval "$(tmux show-environment -s SSH_AUTH_SOCK)"'

# python webserver
alias serve="python3 -m http.server"
