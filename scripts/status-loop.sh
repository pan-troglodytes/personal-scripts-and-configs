#!/bin/bash
while :
do
	clear && cat status.txt
	sleep .1
	~/.scripts/status-write.sh
done
