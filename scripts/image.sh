#!/bin/bash
runWith=$(ls /bin | dmenu)
dirSelection+=$(find $HOME/Pictures -maxdepth 1)
dirSelection+=" $HOME/nicolas/"
dirSelection+=" $HOME/Downloads/"
dirSelection=$(echo $dirSelection | sed 's*\ *\\n*g')
dirSelected=$(echo -e $dirSelection | dmenu -l 30)
pics=$(sxiv -to $dirSelected/*)
echo $dirSelected
$runWith $pics
