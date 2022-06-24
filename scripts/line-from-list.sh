#!/bin/bash
# expected format of given text file:
# the thing you want copied ;; comment to be ignored
line=$([[ -f $1 ]] && cat $1 | dmenu -l 50 | sed 's/\W;;.*//g;') && echo $line || echo -e "no such file:\n$1"
