<div align="center">
<h1>GitHub API cURL</h1>
<p>A cURL wrapper that parses the GitHub API; Making git CLI automation possible without git installed</p>

![github](https://miro.medium.com/max/1200/1*9PnPjPI65fGwLiMfluVLrw.jpeg)

<img src="https://img.shields.io/badge/Shell_Script-121011?style=for-the-badge&logo=gnu-bash&logoColor=white"></img>
<img src="https://img.shields.io/badge/Made%20with-Bash-1f425f.svg"></img>
<img src=https://img.shields.io/badge/Maintained%3F-yes-green.svg></img>
<img src="https://badge-size.herokuapp.com/wick3dr0se/github-api-curl/master/ghc"></img>
</div>

- [Pull](#pull) pull a repository to current directory
- [Push](#push) push a file to repository
- [Repo](#repo) stat repository information
  - [Repo Create](#repo-create) create a repository
  - [Repo Delete](#repo-delete) delete a repository
- [User](#user) stat user information


## Pull
clones/pulls a github repository without .git  

accepts user, repo & branch arguments  
> `ghc pull <user> <repo> <branch>`

--- 
> `ghc pull <user>/<repo>/<branch>`

## Push
commits and pushes a file

accepts a repo, file & commit message  
> `ghc push <file> '<commit message>'`

---
>  `ghc push <repo>/<file> '<commit message>'`

## Repo
gets user's repository information

accepts a user & repository  
> `ghc repo <user> <repo>

### Repo Create
creates a repository

accepts a repository & description
> `ghc repo create <repo> <description>`

---
> `ghc repo cre <repo>`

### Repo Delete
deletes a repository

accepts a repository  
> `ghc repo delete <repo>`

---
> `ghc repo del <repo>`

_PAT requires delete_repo scope_

## User
gets user information

accepts a user  
> `ghc user <user>`
