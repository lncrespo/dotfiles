# .bashrc

source "$HOME/.utils/git-prompt"
# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
PS1='\[\e[0;1;38;5;116m\]\w\[\e[0m\]$(__git_ps1 " on \[\e[0;1;38;5;97m\] %s") \n\[\e[0;1;38;5;104m\]λ \[\e[0m\]'

# source "$HOME/.cargo/env"
