amixer -c $(cat ~/.scripts/volume-card.txt) scontrols | sed "s/[^']*// ; s/,.*$// ; s/'//g" | dmenu > ~/.scripts/volume-controller.txt

# "[^']*" matches everything up intil the next "'"
