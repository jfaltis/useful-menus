MENU_LINES=5

selected="$(
	wmctrl -l -x |
	awk '($2 != "-1")' | # ignore windows on scratchpad
	cut -d'.' -f2- | # remove repeated app name
	awk '!($2="")' | # remove username
	sed "s/  /: /" | # add replace double whitespaces with ': ' to ensure format '{APP}: {WINDOW_TITLE}'
	sort |
	uniq |
	rofi -dmenu -p "window" -m primary -i -l $MENU_LINES)" # output is like '{APP}:{WINDOW_TITLE}'
	#dmenu -m 0 -i -l $MENU_LINES)" # output is like '{APP}:{WINDOW_TITLE}'

windowtitle="$(echo $selected |
	awk '{$1=""};1' | # remove application name
	cut -c 2- )" # remove leading whitespace

wmctrl -a "" -F -r "$windowtitle" # switch to window
