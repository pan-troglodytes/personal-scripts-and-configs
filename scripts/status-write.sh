#!/bin/bash
cat ~/.scripts/status-img.txt > status.txt
echo tme: $(date | awk '{print $4" "$1" "$2" "$3" "$6}') >> status.txt
echo pow: $(~/.scripts/power.sh) >> status.txt
echo vol: $(~/.scripts/vol-get.sh) >> status.txt
echo mem: $(~/.scripts/mem-get.sh) >> status.txt
