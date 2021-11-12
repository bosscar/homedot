#!/bin/sh
WAL=$(ls /media/edrive/wallpapers | shuf -n 1)
echo "/media/edrive/wallpapers/$WAL" >> ~/.config/wallpapers.log
/home/bosscar/.local/bin/wal -i "/media/edrive/wallpapers/$WAL" &
