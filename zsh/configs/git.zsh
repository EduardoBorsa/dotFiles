compdef g=git
function g {
  if [[ $# -gt 0 ]]; then #if the number of arguments for g is greater than 0
    git "$@"
  else
    git status --short --branch
  fi
}
