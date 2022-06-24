
#!/bin/bash
#modernized verision or status-(write/loop).sh. works independadntly from them

dunstify -h string:x-dunst-stack-tag:status "$(echo -e "tme: $(date | awk '{print $4" "$1" "$2" "$3" "$6}')
vol: $(~/.scripts/vol-add.sh)% $(~/.scripts/vol-mute-status.sh)
mem: $(~/.scripts/mem-get.sh)")"


#pow: $(~/.scripts/power.sh)
