# Defunct in favor of ZSH

# Homebrew
export PATH=/usr/local/share/python:$PATH
export PATH=/usr/local/sbin:$PATH
export PATH=/usr/local/bin:$PATH
# export PATH="$HOME/.rbenv/bin:$PATH"

# [[ -s "$HOME/.rvm/scripts/rvm" ]] && . "$HOME/.rvm/scripts/rvm"  # This loads RVM into a shell session.
eval "$(rbenv init -)"

# Environemnt
export EDITOR='subl -w'
export GIT_EDITOR='subl -wl1'
export GIT_PS1_SHOWDIRTYSTATE=1
export NODE_PATH=/usr/local/lib/node_modules:$NODE_PATH
export NODE_PATH="$HOME/node_modules/.bin:$NODE_PATH"

# Enable git completion and handy functions like __git_ps1
source /usr/local/etc/bash_completion.d/git-completion.bash

# Prompt
export PS1="[\w\$(__git_ps1)]$ "

# Same effect as above but let's you manually alter the format (inside the single quotes)
# export PS1="[\w\$(__git_ps1 '(%s)')] \u$ "

# Miscellaneous
chflags nohidden ~/Library # Unhide the Library folder


# Color
alias ls="ls -G"

# Management
alias dots="mate ~/Code/dotfiles"
alias reload='source ~/.bash_profile && echo "sourced ~/.bash_profile"'

# Aliases
alias gl="git log"
alias gs="git status"

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
