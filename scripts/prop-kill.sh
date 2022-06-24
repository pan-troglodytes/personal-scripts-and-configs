xprop | grep PID | awk '{print $3}' | xargs -r kill -9
