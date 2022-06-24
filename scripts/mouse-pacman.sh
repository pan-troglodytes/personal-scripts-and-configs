#!/bin/bash

# if the mouse gets to the very left of the screen, make it jump to the right
# if the mouse gets to the very top of the screen, make it jump to the bottom
# vice versa

# im not at all happy with this code, i clearly need to learn how to use sed properly, infact my
# word filtering skill in general can be improve. However it just werks for now


res=$(xrandr | grep primary | awk '{print $4}' | sed -e s/x/\ /g | sed -e s/+/\ /g | awk '{print $1" "$2}')

while :
do
	loc=$(xdotool getmouselocation | awk '{print $1" "$2}' | sed s/[a-z]:/\ /g)
	
	if [ $(echo $loc | awk '{print $1}') ==  $(echo $res | awk '{print $1 - 1}') ] 
	then
		xdotool mousemove 1 $(echo $loc | awk '{print $2}')
	fi

	if [ $(echo $loc | awk '{print $1}') == 0 ] 
	then
		xdotool mousemove  $(echo $res | awk '{print $1 - 2}') $(echo $loc | awk '{print $2}')
	fi


	if [ $(echo $loc | awk '{print $2}') ==  $(echo $res | awk '{print $2 - 1}') ] 
	then
		xdotool mousemove $(echo $loc | awk '{print $1}') 1
	fi

	if [ $(echo $loc | awk '{print $2}') == 0 ] 
	then
		xdotool mousemove $(echo $loc | awk '{print $1}') $(echo $res | awk '{print $2 - 2}') 
	fi

done
