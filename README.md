<div align="center">
<h1>GitHub API cURL</h1>
<p>A cURL wrapper that parses the GitHub API; Making Git CLI automation possible without Git installed</p>

![github](https://miro.medium.com/max/1200/1*9PnPjPI65fGwLiMfluVLrw.jpeg)

<img src="https://img.shields.io/badge/Shell_Script-121011?style=for-the-badge&logo=gnu-bash&logoColor=white"></img>
<img src="https://img.shields.io/badge/Made%20with-Bash-1f425f.svg"></img>
<img src=https://img.shields.io/badge/Maintained%3F-yes-green.svg></img>
<img src="https://badge-size.herokuapp.com/wick3dr0se/github-api-curl/master/ghc"></img>
</div>

- [Pull](#pull)
- [Push](#push)
- [User](#user)

## Pull
clones/pulls a github repository without .git  

accepts user, repo & branch arguments  
> `ghc pull <user> <repo> <branch>`

--- 
> `ghc pull <user>/<repo>/<branch>`

_without any arguments, ghc will read your git user & current directory name_

## Push
commits and pushes a specified file

accepts a repo, file & commit message
> `ghc push <file> '<commit message>'`

---
>  `ghc push <repo>/<file> '<commit message>'`

## User
gets specifiable user information

accepts a user
> `ghc user <user>`

_without arguments, checks your user information_
