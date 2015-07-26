set -g fish_greeting ""

status --is-interactive; and . (rbenv init -|psub)

set PATH "/usr/local/share/npm/bin" $PATH # npm
set PATH "./node_modules/.bin"      $PATH # local npm
set PATH "/usr/local/heroku/bin"    $PATH # Heroku Toolbelt
set PATH "./bin"                    $PATH # Project-specific binstubs

set -x EDITOR     "atom --wait"
set -x GIT_EDITOR "atom --wait"

set NODE_PATH "/usr/local/lib/node_modules" $NODE_PATH
set NODE_PATH "$HOME/node_modules/.bin"     $NODE_PATH

ulimit -n 8192
command ulimit -n 8192

source "$HOME/.extras/osx_settings"
