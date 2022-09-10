#!/bin/bash
# endpoints/pull.sh #

# clones/pulls a github repository w/o git configs
ghc_pull() { # accept user, repo & branch
  user="${1:-$owner}"
  repo="${2:-$relDir}"
  [[ $3 ]] && branch="$3" || branch="${1##*/}"

  [[ $1 || $1 =~ / ]] && repo="${1}"
  [[ $2 ]] || user=''

  if [[ $1 =~ / ]] ; then
    user="${1%%/*}"
    repo="${1#*/}"
    repo="${repo/\/$branch}"
  fi

  flags='-L'
  ghc GET "repos/${user}/${repo}/tarball/${branch}" | tar xz
  
  [[ $? = 0 ]] && _msg "fetched $repo" 0 || _msg "$repo not found" 1
} # ghc_pull end
