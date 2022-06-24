sed -i s/0/1/ ~/.scripts/neostart.txt &
alacritty &
xmodmap ~/Documents/keybinds/.xmodmap-colonswap ; sxhkd &
dunst &
sed -i ' /./ d' ~/Documents/script-lists/hidden-windows.txt &
autocutsel
