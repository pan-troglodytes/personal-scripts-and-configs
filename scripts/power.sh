echo $(upower -i /org/freedesktop/UPower/devices/battery_BAT0 | grep percentage | awk '{print $2}') $(upower -i /org/freedesktop/UPower/devices/battery_BAT0 | grep state | awk '{print $2}')
