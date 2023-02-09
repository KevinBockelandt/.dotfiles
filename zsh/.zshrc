# If you come from bash you might have to change your $PATH.
export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"

ZSH_THEME="agnoster"

# Just remind me to update when it's time
zstyle ':omz:update' mode reminder

plugins=(git)

source $ZSH/oh-my-zsh.sh

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

DEFAULT_USER="vincent"

############# ALIASES ##################

alias cl="clear; ls"
alias cla="clear; ls -lah"

alias n="nvim"
alias ni="nvim ~/Dropbox/notes/neorg/index.norg"

alias restart="shutdown -r now"

alias nrb="npm run build"
alias nrl="npm run lint"
