#!/bin/sh
WAL=$(ls /media/edrive/wallpapers | shuf -n 1)
echo $WAL
wal -i "/media/edrive/wallpapers/$WAL"
