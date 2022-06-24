[[ $(amixer -c $(cat ~/.scripts/volume-card.txt) get \'$(cat ~/.scripts/volume-controller.txt)\' | grep [0-9]*% | head -n 1 | sed 's/^.*\[// ; s/\]//') == "off" ]] && echo "[Muted]"
