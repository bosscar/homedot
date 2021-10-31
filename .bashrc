#
# ~/.bashrc
#
export TERM=xterm-256color
export EDITOR=nvim
alias sx=startx
alias vim=nvim
alias v=nvim
alias h=htop
alias f=fish
alias x=exit
alias t=tmux
alias tmux='tmux -2'
alias ta='tmux -2 attach'

alias c=clear
alias cls=clear
alias clar=clear
alias clea=clear
alias celar=clear
alias nf=neofetch
alias reboot="sudo reboot"
alias s="startx;clear"
alias src="source ~/.bash_profile"
alias brave='brave-dev --incognito'
alias brave-dev='brave-dev --incognito'
alias brave-browser-dev='brave-browser-dev --incognito'

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
PS1='[\u@\h \W]\$ '
. "$HOME/.cargo/env"

[ -f ~/.fzf.bash ] && source ~/.fzf.bash

#Startx Automatically
if [[ -z "$DISPLAY" ]] && [[ $(tty) = /dev/tty1 ]]; then
  startx
fi
