#!/bin/bash
# endpoints/issues.sh #

ghc_issue() { # accepts user & repo
  if [[ $3 ]] ; then
    user="${1:-$owner}"
    repo="${2:-$relDir}"
    issue="$3"
  elif [[ $2 ]] ; then
    if [[ $1 =~ / ]] ; then
      user="${1%%/*}"
      repo="${1##*/}"
      issue="$2"
    else
      user="$owner"
      repo="${1:-$relDir}"
      issue="$2"
    fi
  else
    user="$owner"
    repo="$relDir"
    issue="$1"    
  fi
  
  echo $user $repo $issue

  ghc GET "repos/$user/$repo/issues/$issue"
} # ghc_issue

ghc_issue_list() { # accepts user & repo
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
} # ghc_issue_list end

ghc_issue_create() { # accepts repo, title and body
  if [[ $3 ]] ; then
    repo="${1:-$relDir}"
    title="$2"
  else
    title="$1"
  fi

  body="$@"
  for i in $repo $title ; do
    body="${body/$i }"
  done

  ghc POST "repos/${owner}/${repo}/issues" "{
    \"title\":\"$title\",
    \"body\":\"$body\"
  }"
} # ghc_issue_create end

ghc_issue_list() { # accepts user & repo
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
} # ghc_issue_list end
