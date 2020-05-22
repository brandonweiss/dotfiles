set fish_greeting # Disable Fish greeting

source (brew --prefix asdf)"/asdf.fish"
source (brew --prefix autojump)"/share/autojump/autojump.fish"

set dotfiles_directory (dirname (dirname (dirname (readlink (status --filename)))))

set PATH ./node_modules/.bin $PATH
set PATH ./bin $PATH
set PATH $dotfiles_directory/bin $PATH

# Variables
set --export EDITOR "code --wait"
set --export GIT_EDITOR "code --wait"

# Bundler
alias bc "bundle check"
alias be "bundle exec"
alias bi "bundle install"
alias bo "bundle outdated"
alias bu "bundle update"

# Rails
alias rc "rails console"
alias rs "rails server"

# Miscellaneous
alias av "aversion ~/Code"
alias bruo "brew update; echo ""; brew outdated"
alias e "code"

starship init fish | source

function rm
  rm-ruby $argv
end
