# Use Git's colored diff
function diff() {
	git diff --no-index "$@";
}

# Syntax-highlight & pretty-print JSON strings or files
# Usage: `json '{"foo":42}'` or `echo '{"foo":42}' | json`
function json() {
	if [ -t 0 ]; then # argument
		python -mjson.tool <<< "$*" | pygmentize -l javascript;
	else # pipe
		python -mjson.tool | pygmentize -l javascript;
	fi;
}

function tre() {
	tree -a -I '.git|node_modules|bower_components' "$@" | less;
}

function weggucken() {
	for item in $*; do
		vlc --rate 1.25 --scale 0.5 $item vlc://quit >/dev/null 2>/dev/null
		rm -i -v $item
	done
}

function fancy-ctrl-z () {
	if [[ $#BUFFER -eq 0 ]]; then
		BUFFER="fg"
		zle accept-line
	else
		zle push-input
		zle clear-screen
	fi
}
