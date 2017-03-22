function rm() {
  rm-ruby $@
}

DOTFILES_DIRECTORY=$(dirname $(readlink ${BASH_SOURCE}))

eval "$(rbenv init -)"

PATH="./node_modules/.bin:$PATH"
PATH="./bin:$PATH"
PATH="$DOTFILES_DIRECTORY/bin:$PATH"

NVM_DIR="$HOME/.nvm"
. "$(brew --prefix nvm)/nvm.sh"

source $DOTFILES_DIRECTORY/bin/nvm_auto.sh

. /usr/local/etc/bash_completion.d/git-completion.bash

export EDITOR="atom --wait"
export GIT_EDITOR="atom --wait"

# NODE_PATH="/usr/local/lib/node_modules" $NODE_PATH
# NODE_PATH="$HOME/node_modules/.bin"     $NODE_PATH

# General
alias ls="ls -G"

# Bundler
alias bc="bundle check"
alias be="bundle exec"
alias bi="bundle install"
alias bo="bundle outdated"
alias bu="bundle update"

# Rails
alias rc="rails console"
alias rs="rails server"

# Miscellaneous
alias e="atom"
alias dots="atom ~/Code/dotfiles"
alias reload=". ~/.bash_profile"

# Private configurations
. $DOTFILES_DIRECTORY/private/intercom.bash
