#!/bin/bash
# quick-kill.sh lists all the processes and kills one selected by the user
# the user is expect to provide a program (that can pick a line out of a list) as the first argument of quick-kill.sh
# if no program is provided it defaults to dmenu

runWith=$1

# if no program is specified (first arg is empty), default with dmenu
[ -z $1 ] && runWith="dmenu -l 30"

ps -ef | $runWith | awk '{print $2}' | xargs -r kill -9
