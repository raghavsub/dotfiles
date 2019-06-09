# autoloads
autoload -Uz colors compinit
colors
compinit

# directory navigation
setopt autocd
setopt autopushd
setopt pushdignoredups

# history
setopt inc_append_history
setopt share_history
HISTFILE=~/.zsh_history
HISTSIZE=1000
SAVEHIST=1000

# prompt
PROMPT="%{$fg[blue]%}%c %{$reset_color%}$ "

# editor
export EDITOR=vim

# ruby
if [[ -d /usr/local/opt/ruby/bin ]] ; then
    export PATH="/usr/local/opt/ruby/bin:"$PATH""
fi

# fzf
if [[ -f "$HOME"/.fzf.zsh ]] ; then
    . "$HOME"/.fzf.zsh
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
