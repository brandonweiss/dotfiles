. ~/.bashrc

RESTORE="\033[0m"

RED="\033[00;31m"
BLUE="\033[00;34m"
MAGENTA="\033[00;35m"
CYAN="\033[00;36m"
SPECIALGRAY="\033[38;5;242m"

function _pwd_with_tilde() {
  echo $PWD | sed 's|^'$HOME'\(.*\)$|~\1|'
}

function _in_git_directory() {
  git rev-parse --git-dir > /dev/null 2>&1
}

function _git_branch_name_or_revision() {
  local branch=$(git symbolic-ref HEAD 2> /dev/null | sed -e 's|^refs/heads/||')
  local revision=$(git rev-parse HEAD 2> /dev/null | cut -b 1-7)

  if [ -n $branch ]; then
    echo $branch
  else
    echo $revision
  fi
}

function _git_upstream_configured() {
  git rev-parse --abbrev-ref @"{u}" > /dev/null 2>&1
}

function _git_behind_upstream() {
  local commits_behind=$(git rev-list --right-only --count HEAD...@"{u}" 2> /dev/null)
  [ $commits_behind -gt 0 ]
}

function _git_ahead_of_upstream() {
  local commits_ahead=$(git rev-list --left-only --count HEAD...@"{u}" 2> /dev/null)
  [ $commits_ahead -gt 0 ]
}

function _git_upstream_status() {
  local arrows=""

  if _git_upstream_configured; then
    if _git_behind_upstream; then
      arrows="$arrows"⇣
    fi

    if _git_ahead_of_upstream; then
      arrows="$arrows"⇡
    fi
  fi

  echo $arrows
}

function _print_in_color() {
  local string=$1
  local color=$2

  echo -en $color
  echo -n $string
  echo -en $RESTORE
}

function _prompt_color_for_status() {
  if [ $1 -eq 0 ]; then
    echo $MAGENTA
  else
    echo $RED
  fi
}

function prompt() {
  local last_status=$?

  printf "\n"
  _print_in_color $(_pwd_with_tilde) $BLUE

  if _in_git_directory; then
    printf " "
    _print_in_color " $(_git_branch_name_or_revision)" $SPECIALGRAY
    printf " "
    _print_in_color " $(_git_upstream_status)" $CYAN
  fi

  printf "\n"
  _print_in_color "❯ " $(_prompt_color_for_status $last_status)
  printf " "
}

export PS1="\$(prompt)"
