# Raghav Subramaniam
# .zshrc

autoload -U colors
colors

# don't need to type cd
setopt auto_cd

# globbing
setopt extended_glob

# spell check commands
setopt correct

# pushd
setopt auto_pushd
setopt pushd_ignore_dups
setopt pushd_silent
setopt pushd_to_home

# history
setopt histignoredups
setopt histignorespace

# completion
setopt complete_in_word

# editor
export EDITOR='vim'

# aliases
alias ls="ls -pG"
alias la="ls -a"
alias ll="ls -ltr"
alias clc="clear"
alias rm="rm -i"

# custom prompt
setopt PROMPT_SUBST
prompt="%{$fg[cyan]%}[%~]%{$reset_color%} $ "

# z
. `brew --prefix`/etc/profile.d/z.sh
