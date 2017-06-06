# Raghav Subramaniam
# .bashrc

# do nothing interactively
case $- in
    *i*) ;;
      *) return;;
esac

# history
HISTCONTROL=ignoreboth
shopt -s histappend
HISTSIZE=1000
HISTFILESIZE=2000

# prompt
PS1="\[\e[32m\]at \[\e[31m\]\h \[\e[32m\]in \[\e[34m\]\w\[\e[0m\]\n$ "

# color aliases
if [ -x /usr/bin/dircolors ]; then
    test -r ~/.dircolors && eval "$(dircolors -b ~/.dircolors)" || eval "$(dircolors -b)"
    alias ls="ls --color=auto"

    alias grep="grep --color=auto"
    alias fgrep="fgrep --color=auto"
    alias egrep="egrep --color=auto"
fi

# ls aliases
alias la="ls -A"
alias ll="ls -alF"

# cd aliases
alias ..="cd .."
alias ...="cd ../.."
alias ....="cd ../../.."

# xdg aliases
alias open="xdg-open &>/dev/null"

# enable completion
if ! shopt -oq posix; then
  if [ -f /usr/share/bash-completion/bash_completion ]; then
    . /usr/share/bash-completion/bash_completion
  elif [ -f /etc/bash_completion ]; then
    . /etc/bash_completion
  fi
fi

# base16-shell
BASE16_SHELL=$HOME/.config/base16-shell/
[ -n "$PS1" ] && [ -s $BASE16_SHELL/profile_helper.sh ] && eval "$($BASE16_SHELL/profile_helper.sh)"

# fzf
[ -f ~/.fzf.bash ] && source ~/.fzf.bash

fd()
{
    [ $# -eq 0 ] && cd "$(find $HOME -type d | fzf -i)" && return
    cd "$(find $1 -type d | fzf -i)"
}

# other aliases
alias work="TERM=xterm-256color ssh -Y -D 7000 -p 7022 raghav@services.safely-you.com"
alias serve="python -m SimpleHTTPServer 8000"
