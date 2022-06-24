#!/bin/bash
notes=~/Documents/notes.txt
date >> $notes
echo >> $notes # new line
echo -n | dmenu >> $notes
echo -e "\n\n" >> $notes
