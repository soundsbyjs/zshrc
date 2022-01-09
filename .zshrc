# Path to your oh-my-zsh installation.
ZSH=/usr/share/oh-my-zsh/

# theme
ZSH_THEME="awesomepanda"

# Which plugins would you like to load?
plugins=(
	git 					# shows stuff related to github
	zsh-autosuggestions 	# press end to autocomplete recent/frequent commands
	zsh-syntax-highlighting # syntax highlighting looks cool
	vi-mode 				# somewhat useful
	zsh-vi-mode 			# a beefed up version of ^
	dirhistory 				# press alt + <- or -> to navigate cd stack 
)

# ###Plugin configs### #
#
# vi mode
# 1. disable the cursor style cuz the beam cursor is ugly
ZVM_CURSOR_STYLE_ENABLED=false

# aliases
alias updatezsh='source ~/.zshrc'
alias bk="cd .."
alias svim="sudo vim "
alias systemctl="sudo systemctl "
alias mkcd="mkdir $1 && cd $1"                        # make dir and cd to it
alias df="df -h"
alias grepctl="sudo journalctl | grep $1"
alias pacdate="sudo pacman -Syu "
alias pacremove='sudo pacman -R '
alias pacstall="sudo pacman -Sy "
alias quickclone='git clone https://www.github.com/$1' # quickclone "username/repo"
alias projucer='Projucer'

ZSH_CACHE_DIR=$HOME/.cache/oh-my-zsh
if [[ ! -d $ZSH_CACHE_DIR ]]; then
  mkdir $ZSH_CACHE_DIR
fi

# have to manually set these cuz oh my zsh is weird
export LC_ALL=en_US.UTF-8
export LANG=en_US.UTF-8

source $ZSH/oh-my-zsh.sh

