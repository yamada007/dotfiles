# Environment variables
export ZDOTDIR="$HOME/.zsh"
export FPATH="$FPATH:$HOME/.zsh/pure"
export EDITOR=nvim

# Set prompt
autoload -U promptinit; promptinit
zstyle :prompt:pure:path color magenta
prompt pure

# Set up Node Version Manager
# source /usr/share/nvm/init-nvm.sh

# Aliases
alias vim="NVIM_LISTEN_ADDRESS=/tmp/nvimsocket nvim"
alias n="nnn"
alias ..="cd .."
alias ls="exa"

# History
HISTFILE=~/.zsh/.histfile
HISTSIZE=1000
SAVEHIST=1000
setopt autocd extendedglob

# Vi-mode editing
bindkey -v

# Extended completion
zstyle :compinstall filename "$HOME/.zsh/.zshrc"
autoload -Uz compinit; compinit
# Ignore case matching
zstyle ':completion:*' matcher-list 'm:{a-zA-Z}={A-Za-z}'
