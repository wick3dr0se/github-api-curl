#!/bin/bash
# endpoints/issues.sh #

ghc_issues() { # accepts user & repo
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

  ghc GET "repos/${user}/${repo}/issues"
} # ghc_issues end

ghc_issue_create() { # accepts user, repo, title and body
  if [[ $3 ]] ; then
    repo="${1:-$relDir}"
    title="$2"
  elif [[ $4 ]] ; then
    user="${1:-$owner}"
    repo="${2:-$relDir}"
    title="$3" 
  fi

  body="$@"
  for i in $user $repo $title ; do
    body="${body/$i}"
  done

  ghc POST "repos/${owner}/${repo}/issues" "{
    \"title\":\"$title\",
    \"body\":\"$body\"
  }"

} # ghc_issue_create end
