#!/bin/bash
# endpoints/user.sh #

# gets specifiable user information
ghc_user() { # accept user
  user=${1:-$owner}

  ghc GET "users/${user}"
} # end ghc_user
