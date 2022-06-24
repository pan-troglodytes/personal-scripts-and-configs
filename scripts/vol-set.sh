amixer -c $(cat ~/.scripts/volume-card.txt) sset \'$(cat ~/.scripts/volume-controller.txt)\' $1%
