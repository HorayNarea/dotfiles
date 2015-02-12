# For sudo-ing aliases
# https://wiki.archlinux.org/index.php/Sudo#Passing_aliases
alias sudo='sudo '

# simple webserver for testing
PyVer=$(python -c "import sys;print(sys.version_info.major)")
if [[ $PyVer == 2 ]]; then
	alias serve='python -m SimpleHTTPServer 8080'
elif [[ $PyVer == 3 ]]; then
	alias serve='python -m http.server 8080'
fi
unset PyVer

#
alias rm='rm -I'
alias dig='drill'
alias ls='\ls -bh -FC --color=yes'
alias l='ls -l'
alias la='l -A'
alias less='less -FRX'
alias tree='tree -CF --dirsfirst'
