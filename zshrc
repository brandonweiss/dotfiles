# Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="robbyrussell"

# Set to this to use case-sensitive completion
# CASE_SENSITIVE="true"

# Comment this out to disable weekly auto-update checks
# DISABLE_AUTO_UPDATE="true"

# Uncomment following line if you want to disable colors in ls
# DISABLE_LS_COLORS="true"

# Uncomment following line if you want to disable autosetting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment following line if you want red dots to be displayed while waiting for completion
# COMPLETION_WAITING_DOTS="true"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Example format: plugins=(rails git textmate ruby lighthouse)
plugins=(git brew)

source $ZSH/oh-my-zsh.sh

# Customize to your needs...
export PATH=/usr/local/bin:/usr/local/sbin:/usr/local/share/npm/bin:/usr/bin:/bin:/usr/sbin:/sbin:/usr/X11/bin

# Added by the Heroku Toolbelt
export PATH="/usr/local/heroku/bin:$PATH"

source $HOME/.zshenv

ZSH_THEME_GIT_PROMPT_PREFIX="(%{$fg[red]%}"
ZSH_THEME_GIT_PROMPT_SUFFIX="%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_DIRTY="%{$fg[blue]%}) %{$fg[yellow]%}✗%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_CLEAN="%{$fg[blue]%})"

# Environemnt
export EDITOR='subl -w'
export GIT_EDITOR='subl -wl1'
export NODE_PATH=/usr/local/lib/node_modules:$NODE_PATH
export NODE_PATH="$HOME/node_modules/.bin:$NODE_PATH"

# Miscellaneous

source $HOME/.extras/osx_settings

# Autojump
[[ -s `brew --prefix`/etc/autojump.sh ]] && . `brew --prefix`/etc/autojump.sh

alias e="subl -n ."

# Color
alias ls="ls -G"

# Management
alias dots="subl ~/Code/dotfiles"
alias reload='source ~/.zshrc && echo "sourced ~/.zshrc"'

# Aliases
alias g="git"
alias gl="echo STOP using this alias, it was a bad idea."
alias gs="echo STOP using this alias, it was a bad idea."

alias be="bundle exec"
alias bers="bundle exec rails server"
alias bersd="bundle exec rails server --debugger"
alias berc="bundle exec rails console"

# Rails
alias rs="rails server"
alias rsd="rails server --debugger"
alias rc="rails console"

# Passenger
alias rst="touch tmp/restart.txt && echo touched tmp/restart.txt"

# Processes
alias psf="ps -x | grep -v grep | grep"
