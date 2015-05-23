# default bindings for zsh-users/zsh-history-substring-search
zmodload zsh/terminfo
bindkey "$terminfo[kcuu1]" history-substring-search-up
bindkey "$terminfo[kcud1]" history-substring-search-down

zle -N fancy-ctrl-z
bindkey '^Z' fancy-ctrl-z

# For historical purposes
HISTFILE=~/.zsh_history
HISTSIZE=SAVEHIST=10000
setopt histignorealldups
setopt sharehistory
setopt extendedhistory
setopt histignorespace

setopt correct
setopt interactivecomments
setopt auto_cd
setopt prompt_subst

ZSH_CACHE_DIR=~/.zsh
ZSH_HIGHLIGHT_HIGHLIGHTERS=(main brackets)
