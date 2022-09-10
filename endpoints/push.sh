#!/bin/bash
# endpoints/push.sh #

# creates or updates a specified file - auto commit and push
ghc_push() { # accepts a file & commit message
  [[ $1 =~ / ]] && repo="${1%%/*}"
  repo=${repo:-${PWD##*/}}
  file=${1##*/}

  [[ ! $1 ]] && _msg 'no file specified' 1 && exit
  
  [[ ! -f $file ]] && _msg 'file not found' 1 && exit

  [[ ! $2 ]] && _msg 'no commit message supplied' 1 && exit
  message="$2"

  content="$(base64 $file)"

  sha=$(ghc GET "repos/${owner}/${repo}/contents/${file}" | awk -F\" /sha/'{print $4}')
  
  ghc PUT "repos/${owner}/${repo}/contents/${file}" "{
    \"message\":\"${message}\",
    \"commiter\":{
      \"name\":\"$owner\",
      \"email\":\"$email\"
    },
    \"content\":\"$content\",
    \"sha\":\"$sha\"
  }"
}
