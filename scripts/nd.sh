# past a string in the currently focused terminal. to be pasted after a program, to unbind it from the terminal and prevent it from printing to standard output and error messages
echo -n " &>/dev/null & disown" | xclip -selection clipboard && xdotool keydown ctrl keydown shift key v keyup ctrl keyup shift
