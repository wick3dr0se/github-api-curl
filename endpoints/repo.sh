#!/bin/bash
# endpoints/repo.sh #

# fetches specifiable repository information
ghc_repo() { # accepts user & repo
  if [[ $2 ]] ; then
    user="${1:-$owner}"
    repo="${2:-$relDir}"
  else
    if [[ $1 =~ / ]] ; then
      user="${1%%/*}"
      repo="${1##*/}"
    else
      user="$owner"
      repo="${1:-$relDir}"
    fi
  fi

  ghc GET "repos/${user}/${repo}"
}

ghc_repo_create() { # accepts repo & description
  repo="${1:-$relDir}"
  description="${@/$repo}"

  echo $user $repo ${description}

  ghc POST "user/repos" "{
    \"name\": \"${repo}\",
    \"description\": \"${description}\",
    \"auto_init\": true,
    \"private\": false
  }"
}

ghc_repo_delete() { # accepts repo 
  repo="${1:-$relDir}"

  ghc DELETE "repos/${owner}/${repo}"
}
