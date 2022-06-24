#!/bin/bash
hiddenWindows=~/Documents/script-lists/hidden-windows.txt
WINID=$(~/.scripts/line-from-list.sh $hiddenWindows)
for window in $WINID ; do
	xdotool windowmap $window || notify-send "ERROR: no such process \"$window\" exists"
	sed -i /$window/d $hiddenWindows
done
