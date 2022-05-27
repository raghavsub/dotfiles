# completion
autoload -Uz compinit
compinit -i

# directory navigation
setopt autocd
setopt autopushd
setopt pushdignoredups

# history
setopt hist_ignore_dups
setopt inc_append_history
setopt share_history
HISTFILE=~/.zsh_history
HISTSIZE=1000
SAVEHIST=1000

# prompt
autoload -Uz vcs_info
zstyle ':vcs_info:git:*' formats '(%b) '
setopt prompt_subst
precmd() {
    vcs_info
}
PROMPT='%{$fg[green]%}%c %{$fg[yellow]%}$vcs_info_msg_0_%{$reset_color%}$ '

# colors
autoload -Uz colors
colors
case "$(uname -s)" in
    Darwin*) alias ls="ls -G";;
    Linux*) alias ls="ls --color=auto";;
esac

# zmv
autoload -Uz zmv

# ls aliases
alias l="ls"
alias la="ls -A"
alias ll="ls -Ahl"

# ssh agent forwarding in tmux
alias fixssh='eval "$(tmux show-environment -s SSH_AUTH_SOCK)"'

# python webserver
alias serve="python3 -m http.server 8888"

# venv activate
alias act="source venv/bin/activate"

# fzf
if [[ -f "$HOME"/.fzf.zsh ]] ; then
    . "$HOME"/.fzf.zsh
fi

# editor
export EDITOR=vim
