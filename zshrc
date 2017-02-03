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

# vi mode
bindkey -v
bindkey jj vi-cmd-mode
bindkey '^?' backward-delete-char

# aliases
alias ls="ls -pG"
alias la="ls -al"
alias rm="rm -i"

# custom prompt
setopt PROMPT_SUBST
prompt="%{$fg[blue]%}[%~]%{$reset_color%} $ "

# fzf
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

# functions
source ~/fzf_fns.sh
