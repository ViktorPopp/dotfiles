# If not running interactively, don't do anything
[[ $- != *i* ]] && return

# Colors for common utilities
alias ls='ls --color=auto'
alias grep='grep --color=auto'
PS1='[\u@\h \W]\$ '

# Dotfile Manager
alias dfm="git --git-dir=$HOME/.dots --work-tree=$HOME"

