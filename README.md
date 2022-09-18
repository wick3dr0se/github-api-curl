<div align="center">
<h1>ghc - GitHub API cURL</h1>
<p>A cURL wrapper that parses GitHub REST API v3. Making things like git CLI automation possible without git installed</p>

![github](https://miro.medium.com/max/1200/1*9PnPjPI65fGwLiMfluVLrw.jpeg)

<img src="https://img.shields.io/badge/Shell_Script-121011?style=for-the-badge&logo=gnu-bash&logoColor=white"></img>
<img src="https://img.shields.io/badge/Made%20with-Bash-1f425f.svg"></img>
<img src=https://img.shields.io/badge/Maintained%3F-yes-green.svg></img>
<img src="https://badge-size.herokuapp.com/wick3dr0se/github-api-curl/master/ghc"></img>

<h2><a href="https://discord.gg/TstuWvDzXr">discord</a></h2>
</div>

# Install
setup ghc on system

```sh
curl https://raw.githubusercontent.com/wick3dr0se/github-api-curl/master/install.sh -O && bash install.sh
```

# Arguments
possible arguments to ghc
  
- [issue](#issue) list issues
  - [create](#create) create an issue
  - [list](#list) list repository issues
- [pull](#pull) pull a repository
- [push](#push) push a file to repository
- [repo](#repo) stat repository information
  - [contributors](#contributors) list repository contributors
  - [create](#create) create a repository
  - [delete](#delete) delete a repository
- [user](#user) stat user information

## issue
view a repository issue

accepts user, repo & issue number  
`ghc issue <user> <repo> <issue>`

### create
create a repository issue

accepts repo, title & body  
`ghc issue create <repo> <title> '<body>'`  

`ghc issue cre <title> '<body>'`

### list
list repository issues

accepts user, repo & issue number  
`ghc issue list <user> <repo> <issue>`

## pull
clones/pulls a github repository without .git  

accepts user, repo & branch arguments  
`ghc pull <user> <repo> <branch>`  

`ghc pull <user>/<repo>/<branch>`

## push
commits and pushes a file

accepts a repo, file & commit message  
`ghc push <file> '<commit message>'`  

`ghc push <repo>/<file> '<commit message>'`

## repo
gets user's repository information

accepts user & repo  
`ghc repo <user> <repo>`

### contributors
list repository contributors

accepts user & repo  
`ghc repo contributors <user> <repo>`  

`ghc repo contrib <repo>`

### create
creates a repository

accepts a repo & description  
`ghc repo create <repo> <description>`  

`ghc repo cre <repo>`

### delete
deletes a repository

accepts a repo   
`ghc repo delete <repo>`  

`ghc repo del <repo>`

_PAT requires delete_repo scope_

## user
gets user information

accepts a user  
`ghc user <user>`
