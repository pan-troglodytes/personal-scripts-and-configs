#!/bin/bash
list=$(find ~/Documents/script-lists -maxdepth 1 | dmenu -l 30) 
~/.scripts/line-from-list.sh $list | xclip -r -selection clipboard && xdotool keydown "ctrl" key "v" keyup "ctrl"
