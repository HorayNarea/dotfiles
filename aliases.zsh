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
alias la='l -A'
alias less='less -FRX'
alias tree='tree -CF --dirsfirst'

# deb-specific
alias au='apt-fast update'
alias ag='apt-fast upgrade'
alias adg='apt-fast dist-upgrade'
alias acs='apt-cache search'
alias acsh='apt-cache show'
alias agi='apt-fast install'

# others
alias dig='drill'
alias su='sudo zsh'
