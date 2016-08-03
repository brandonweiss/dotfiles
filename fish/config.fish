set -g fish_greeting ""

status --is-interactive; and . (rbenv init -|psub)

set GIT_CONTRIB (brew --prefix)"/share/git-core/contrib"
set DIFF_HIGHLIGHT "$GIT_CONTRIB/diff-highlight"

set PATH "./node_modules/.bin" $PATH # local npm
set PATH $DIFF_HIGHLIGHT       $PATH # diff-so-fancy
set PATH "./bin"               $PATH # Project-specific binstubs

bass source ~/.nvm/nvm.sh ';' nvm > /dev/null

set -x EDITOR     "atom --wait"
set -x GIT_EDITOR "atom --wait"

set NODE_PATH "/usr/local/lib/node_modules" $NODE_PATH
set NODE_PATH "$HOME/node_modules/.bin"     $NODE_PATH

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
alias reload=". ~/.config/fish/config.fish"
