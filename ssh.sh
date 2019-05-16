#!/bin/sh
MENU="rofi -p ssh -dmenu -m 0 -i"
#MENU="dmenu -p ssh -m 0 -i"

TERM="konsole -e"

selection=$(cat .ssh/config | grep "Host " | sed 's/Host //g')
$TERM "ssh $(echo -e "$selection" | $MENU -l $(echo "$selection"| wc -l))"
