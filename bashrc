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

PATH="$HOME/.pilot/bin:$PATH"
eval $(pilot env)
INTERCOM_USER="brandon"

# General
alias ls="ls -G"

# Directories
alias cde="cd ~/Code/intercom/embercom"
alias cdi="cd ~/Code/intercom/intercom"
alias cdj="cd ~/Code/intercom/intercom-js"
alias cdm="cd ~/Code/intercom/marketing-site"

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
