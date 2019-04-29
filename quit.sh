systemctl  $(
	echo -e "poweroff\nreboot\nsuspend" | 
	rofi -p "" -dmenu -m 0 -l 3 -i)
	#dmenu -m 0 -l 3 -i)
