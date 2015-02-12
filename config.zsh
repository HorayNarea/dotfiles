# default bindings for zsh-users/zsh-history-substring-search
zmodload zsh/terminfo
bindkey "$terminfo[kcuu1]" history-substring-search-up
bindkey "$terminfo[kcud1]" history-substring-search-down

# For historical purposes
HISTFILE=~/.zsh_history
HISTSIZE=SAVEHIST=10000
setopt histignorealldups
setopt sharehistory
setopt extendedhistory

setopt auto_cd
setopt prompt_subst

ZSH_HIGHLIGHT_HIGHLIGHTERS=(main brackets)
