
# my things start here
export PS1="\[\033[38;5;14m\]\u@\h \$? \w \$(git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/(\1)/')\n\[\033[38;5;14m\]\\$ \[$(tput sgr0)\]"

alias cpy="xclip -selection clipboard"

# run previous command as root
alias pls='sudo $( history -p !! )'

# clearing
alias c='clear'
alias b='c && bash'
alias cn="clear && neofetch"

#vim mode
set -o vi

# verbosity
alias cp="cp -iv"
alias rm="rm -ivr"
alias mv="mv -iv"
alias ls='ls --color=auto -F'

# suspend and lock
alias sus="slock & systemctl suspend"

# only neofetch automatically on the first terminal (after running x)
if [ $(cat ~/.scripts/neostart.txt)  -eq "1" ]
	then
	sed -i s/1/0/ ~/.scripts/neostart.txt # ~/.xinitrc changes the 0 to a 1
	neofetch
fi

# kill process
alias qk="~/.scripts/quick-kill.sh fzf"
alias pk="~/.scripts/prop-kill.sh"

# open nvim
svim() {
	# run with sudo if user has no write permission
	if [[ -f $1 ]] && $(! test -w $1) ; then
		sudo nvim "$1"
	else
		[[ $1 == "" ]] && nvim || nvim "$1"
	fi
}
alias vi="svim"

# terminal window swallowing
swallow() { 
    ( [ ! -z "$1" ] || exit 1;
    WINID="$(xdotool getactivewindow)" || exit 1;
    "$@" 2> /dev/null & xdotool windowunmap "$WINID" && wait;
    xdotool windowmap "$WINID" )
}
for f in firefox sxiv mpv thunar; do
    alias "s-$f"="swallow $f"
done && unset f
. "$HOME/.cargo/env"

# ls after cd
cdls() {
	if [[ -z $1 ]] ; then
		cd ; clear -x
	else
		cd "$@" && ls
	fi
	
}
alias cd="cdls"

# oof
alias up="cd ../"
alias upp="cd ../../"
alias uppp="cd ../../../"
alias upppp="cd ../../../../"
alias uppppp="cd ../../../../../"
alias sl"=ls"

# soooo lazy
alias mkdir="mkdir -pv"
alias md="mkdir"
mcd() {
	md $1
	cd $1
	echo "cd: changed directory to "\'$1\'
}

# find in file - search string in files (in current dir)
fif() { grep -rnw '.' -e "$1"; }

# display the terminal and and working directory as x window title
# https://wiki.archlinux.org/title/Alacritty#%22user@host:cwd%22_in_window_title_bar
case ${TERM} in
alacritty)
PROMPT_COMMAND=${PROMPT_COMMAND:+$PROMPT_COMMAND; }'printf "\033]0;%s-%s@%s:%s\007" "${TERM}" "${USER}" "${HOSTNAME%%.*}" "${PWD/#$HOME/\~}"'
;;
screen*)
PROMPT_COMMAND=${PROMPT_COMMAND:+$PROMPT_COMMAND; }'printf "\033_%s@%s:%s\033\\" "${USER}" "${HOSTNAME%%.*}" "${PWD/#$HOME/\~}"'
;;
esac

# get image path, get file path
gi() {
	echo $(pwd)/$(sxiv * -to) | xclip -selection clipboard
}
gf() {
	echo $(pwd)/$(ls -a | fzf) | xclip -selection clipboard
}

# start x if in first tty
if [[ $(tty) == "/dev/tty1" ]] ; then
	startx
fi

# copy a previous command to clipboard
alias cpyc="history  | sed 's/\ *[0-9]*\ //' | fzf --tac | xclip -selection clipboard"

# when using an old pooter
#alias blender="MESA_GL_VERSION_OVERRIDE=4.1 blender"

# cd with fzf
navi() {
	while [[ $changeDirectoryTo != "./" ]] ; do # select current directory to exit
		changeDirectoryTo="$(ls -a | fzf)"
		cd "$changeDirectoryTo"
	done
	unset changeDirectoryTo
}
