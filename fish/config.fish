stty sane
set fish_greeting
fish_vi_key_bindings

set PATH ~/.cargo/bin $PATH
# Commands to run in interactive sessions can go here
abbr x exit
abbr t tmux
abbr h htop
abbr c clear
abbr sx startx
abbr nf neofetch
abbr v nvim
abbr vi nvim
abbr vim nvim
abbr reboot 'sudo reboot'
abbr pm 'sudo pacman -S'
abbr src 'source ~/.config/fish/config.fish'
alias swp='paru -Syyu && yes | paru -Scc'
alias freeram='echo 3 | sudo tee /proc/sys/vm/drop_caches'
alias ls='exa --group-directories-first'
alias ll='exa -lah'
alias l='exa -l'
alias df='df -h'
alias celar=clear
alias clar=clear
alias clea=clear
alias cls=clear

# bind
bind \ce end-of-line accept-autosuggestion
if bind -M insert > /dev/null 2>&1
  bind -M insert \ce end-of-line accept-autosuggestion
end

# set fish_function_path $fish_function_path "/usr/share/powerline/bindings/fish"
# source /usr/share/powerline/bindings/fish/powerline-setup.fish
# powerline-setup
sh ~/.cargo/env

clear
