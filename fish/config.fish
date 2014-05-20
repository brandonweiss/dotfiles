set -g fish_greeting ""

set PATH "/usr/local/share/npm/bin" $PATH # npm
set PATH "./node_modules/.bin"      $PATH # local npm
set PATH "$HOME/.rbenv/bin"         $PATH # rbenv
set PATH "$HOME/.rbenv/shims"       $PATH # rbenv
set PATH "/usr/local/sbin"          $PATH # Homebrew
set PATH "/usr/local/bin"           $PATH # Homebrew
set PATH "/usr/local/heroku/bin"    $PATH # Heroku Toolbelt
set PATH "./bin"                    $PATH # Project-specific binstubs

rbenv rehash >/dev/null ^&1

set -x EDITOR     "atom --wait"
set -x GIT_EDITOR "atom --wait"
set NODE_PATH  "/usr/local/lib/node_modules" $NODE_PATH
set NODE_PATH  "$HOME/node_modules/.bin"     $NODE_PATH

. "$HOME/.extras/osx_settings"
