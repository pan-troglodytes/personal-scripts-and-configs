echo $(free -m | awk '{print $3}' | sed -n '2p')/$(free -m | awk {'print $2}' | sed -n '2p')
