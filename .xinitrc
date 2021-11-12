xrandr --output DP-4 --mode 1920x1080 --rate 144.00
xrdb ~/.Xresources
slstatus &
pasystray &
xautolock -time 10 -locker slock &
sh ~/.config/walle.sh
picom &
exec dwm
