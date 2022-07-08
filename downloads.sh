#!/bin/bash

MENU="rofi -dmenu -p open -l 10 -i"
#MENU="dmenu -p open -i"

selection=$(ls --time-style='+%d %b' -iso -lt "$XDG_DOWNLOAD_DIR/" | sed 1d | awk '{print ""}{for(i=7;i<=NF;++i)printf $i" "}' | sed 1d | $MENU)
file=$(echo $selection | awk '{print ""}{for(i=3;i<=NF;++i)printf $i" "}' | sed 1d)

test -z $file || xdg-open "$XDG_DOWNLOAD_DIR/$file"
