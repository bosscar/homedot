stty sane
set fish_greeting
fish_vi_key_bindings
set -g -x EDITOR nvim
set -g -x GTK_THEME Adwaita:dark

set PATH ~/.cargo/bin ~/.local/bin $PATH
# Commands to run in interactive sessions can go here
abbr x exit
abbr t 'tmux -2'
abbr h htop
abbr c clear
abbr sx startx
abbr nf neofetch
abbr v nvim
abbr vi vi
abbr vim nvim
abbr reboot 'sudo reboot'
abbr systemctl 'sudo systemctl'
abbr pm 'sudo pacman -S'
abbr paru 'paru -S'
abbr src 'source ~/.config/fish/config.fish'
alias swp='paru -Syyu && yes | paru -Scc'
alias freeram='echo 3 | sudo tee /proc/sys/vm/drop_caches'
alias ls='exa --group-directories-first'
alias ll='exa -lah'
alias l='exa -l'
alias df='df -h'
alias du='du -sh'
alias celar=clear
alias clar=clear
alias clea=clear
alias m='cd /media/edrive;ll'
alias brave='brave-dev --incognito 2>/dev/null 1>/dev/null'
alias brave-dev='brave-dev --incognito 2>/dev/null 1>/dev/null'
alias brave-browser-dev='brave-browser-dev --incognito 2>/dev/null 1>/dev/null'
alias cls=clear
alias doom='~/.emacs.d/bin/doom'
alias wp='feh --bg-fill --randomize /media/edrive/wallpapers/*'
alias ta='tmux -2 attach'
alias frc='nvim ~/.config/fish/config.fish'
alias surf='surf lite.duckduckgo.com 2>/dev/null 1>/dev/null &;rm -rf ~/.surf/cache'

# bind
bind \ce end-of-line accept-autosuggestion
if bind -M insert > /dev/null 2>&1
  bind -M insert \ce end-of-line accept-autosuggestion
end

# set fish_function_path $fish_function_path "/usr/share/powerline/bindings/fish"
# source /usr/share/powerline/bindings/fish/powerline-setup.fish
# powerline-setup
sh ~/.cargo/env
# starship init fish | source
clear
