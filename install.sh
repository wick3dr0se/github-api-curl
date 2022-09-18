#!/bin/bash
# GitHub API cURL install script

repo='github-api-curl'

# check if termux paths exist
# set usr/bin path
[[ -d /data/data/com.termux/files/usr/bin ]] &&
  binPath='/data/data/com.termux/files/usr/bin' ||
  binPath='/usr/bin'
# set usr/share path
[[ -d /data/data/com.termux/files/usr/share ]] &&
  sharePath='/data/data/com.termux/files/usr/share' ||
  sharePath='/usr/share'

# create temporary directory
mkdir $repo && cd $repo

# get repository tarball
curl -L https://api.github.com/repos/wick3dr0se/$repo/tarball | tar xz --strip=1

# copy ghc to your system bin directory
cp ghc $binPath

# give execution rights
chmod +x $binPath/ghc

# put endpoints in github-api-curl folder
mkdir $sharePath/$repo 2>/dev/null

# copy endpoints to your system share directory
cp -r endpoints/ $sharePath/$repo

# scrap temporary directory
rm -fr ../$repo
