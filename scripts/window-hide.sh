#!/bin/bash
hiddenWindows=~/Documents/script-lists/hidden-windows.txt
[[ -f $hiddenWindows ]] || touch $hiddenWindows
WINID=$(xdotool getactivewindow)
WINNAME=$(xdotool getwindowname $WINID | tr '[:upper:]' '[:lower:]') 
echo $WINID ";;" "$(xdotool getactivewindow getwindowclassname) - "$WINNAME  >> $hiddenWindows
xdotool windowunmap $WINID
