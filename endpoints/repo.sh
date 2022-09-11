#!/bin/bash
# endpoints/repo.sh #

# fetches specifiable repository information
ghc_repo() { # accepts user & repo
  user="${1:-$owner}"
  repo="${2:-$relDir}"

  if [[ ! $2 ]] ; then
    if [[ $1 =~ / ]] ; then
      user="${1%%/*}"
      repo="${1##*/}"
    else
      user="$owner"
      repo="$1"
    fi
  fi

  ghc GET "repos/${user}/${repo}"
}
