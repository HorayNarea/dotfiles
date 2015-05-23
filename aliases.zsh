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

# basic utils
alias rm='rm -I'
alias ls='\ls -bh -FC --group-directories-first --color=yes'
alias l='ls -l'
alias la='l -a'
alias lsa='ls -A'
alias less='less -FRX'
alias tree='tree -CF --dirsfirst'

# debian specific
alias au='sudo apt-get update'
alias ag='sudo apt-get upgrade'
alias adg='sudo apt-get dist-upgrade'
alias acs='apt-cache search'
alias acsh='apt-cache show'
alias agi='sudo apt-get install'

# others
alias dig='drill'
alias su='sudo su'
