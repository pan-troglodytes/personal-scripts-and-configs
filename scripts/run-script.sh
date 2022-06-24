#!/bin/bash
scriptFolder=~/.scripts/
script=$(ls $scriptFolder | grep .sh | dmenu -l 30 -p "run script")
$scriptFolder$script

