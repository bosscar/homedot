#!/bin/sh
sed -i '$ d' ~/.config/wallpapers.log
WAL=$(tail -n 1 ~/.config/wallpapers.log)
/home/bosscar/.local/bin/wal -i "$WAL" &
