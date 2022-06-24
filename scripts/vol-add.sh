volAdd=$1

if [ -z $volAdd ]
then
	volAdd=0
fi
volCurrent=$(amixer -c $(cat ~/.scripts/volume-card.txt)  get \'$(cat ~/.scripts/volume-controller.txt)\' | grep [0-9]*% -o | head -n 1 | awk '{print $1 + 0}')

expr $volCurrent + $volAdd


