function rm() {
  rm-ruby $@
}

PATH="./node_modules/.bin:$PATH"
PATH="./bin:$PATH"
PATH="$HOME/Code/dotfiles/bin:$PATH"

eval "$(rbenv init -)"

NVM_DIR="$HOME/.nvm"
. "$(brew --prefix nvm)/nvm.sh"

EDITOR="atom --wait"
GIT_EDITOR="atom --wait"

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
. ./private/intercom.bash
