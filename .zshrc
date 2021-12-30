# js's configs for the zoomer shell

# table of contents:
# 1. default configs, theme, etc
# 2. plugins
# 3. aliases + other goodies
# read the github readme for installation instructions

############### 1 ################

ZSH=/usr/share/oh-my-zsh/

# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
ZSH_THEME="arrow"

# Case-sensitive completion must be off. _ and - will be interchangeable.
HYPHEN_INSENSITIV="true"

# Uncomment the following line to enable command auto-correction.
ENABLE_CORRECTION="true"

############### 2 ################

# Add wisely, as too many plugins slow down shell startup.

plugins=(
    git                 # shows when you're in a git directory and some other sexy features
    zsh-autosuggestions # press end to complete the command displayed in grey
    dirhistory          # alt left to go to the prev directory, alt right to go forward in history
)

############### 3 ################

# aliases (which I have a lot of)

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
alias projucer='projucer'

if [[ ! -d $ZSH_CACHE_DIR ]]; then
  $ZSH_CACHE_DIR
fi

source $ZSH/oh-my-zsh.sh
