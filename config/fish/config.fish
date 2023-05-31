set fish_greeting # Disable Fish greeting

set PATH /opt/homebrew/bin $PATH

source (brew --prefix asdf)"/libexec/asdf.fish"
source (brew --prefix autojump)"/share/autojump/autojump.fish"

set PATH ./node_modules/.bin $PATH
set PATH ./bin $PATH
set dotfiles_directory (dirname (dirname (dirname (readlink (status --filename)))))
set PATH $dotfiles_directory/bin $PATH

# Variables
set --export EDITOR "code --wait"
set --export GIT_EDITOR "code --wait"

alias av "aversion ~/Code"
alias bruo "brew update; echo ""; brew outdated"
alias e code

# Bundler
alias bc "bundle check"
alias be "bundle exec"
alias bi "bundle install"
alias bo "bundle outdated"
alias bu "bundle update"

# Rails
alias rc "rails console"
alias rs "rails server"

starship init fish | source

function rm
    rm-ruby $argv
end
