set -g fish_greeting ""

set PATH "/usr/local/share/npm/bin" $PATH # npm
set PATH "$HOME/.rbenv/bin"         $PATH # rbenv
set PATH "$HOME/.rbenv/shims"       $PATH # rbenv
set PATH "/usr/local/sbin"          $PATH # Homebrew
set PATH "/usr/local/bin"           $PATH # Homebrew
set PATH "/usr/local/heroku/bin"    $PATH # Heroku Toolbelt

rbenv rehash >/dev/null ^&1

set -x EDITOR     "subl -w"
set -x GIT_EDITOR "subl -wl1"
set NODE_PATH  "/usr/local/lib/node_modules" $NODE_PATH
set NODE_PATH  "$HOME/node_modules/.bin"     $NODE_PATH

. "$HOME/.extras/osx_settings"
