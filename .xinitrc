xrandr --output DP-4 --mode 1920x1080 --rate 144.00
feh --bg-fill --randomize /media/edrive/wallpapers
xrdb ~/.Xresources
picom &
slstatus &
pasystray &
xautolock -time 10 -locker slock &
exec dwm
