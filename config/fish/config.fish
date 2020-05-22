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

alias av "aversion ~/Code"
alias bruo "brew update; echo ""; brew outdated"
alias e "code"

starship init fish | source

function rm
  rm-ruby $argv
end
