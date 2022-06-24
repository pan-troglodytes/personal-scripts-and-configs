[[ $(~/.scripts/vol-mute-status.sh) == "[Muted]" ]] && toggle=unmute || toggle=mute
amixer -c $(cat ~/.scripts/volume-card.txt) sset \'$(cat ~/.scripts/volume-controller.txt)\' $toggle
