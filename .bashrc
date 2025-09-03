#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
alias grep='grep --color=auto'
alias q='exit'
alias cls='clear'

PS1='\[\e[2m\]\u@\h\[\e[0m\]:\[\e[1m\]$( if [[ $PWD == $HOME ]]; then printf root; else printf %s "${PWD##*/}"; fi )\[\e[0m\] > '
LIBVA_DRIVER_NAME=iHD

eval "$(ssh-agent -s)" >/dev/null 2>&1
ssh-add -q ~/.ssh/id_ed25519 2>/dev/null
