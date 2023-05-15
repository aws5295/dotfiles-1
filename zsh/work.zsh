# -*- mode: sh -*-

# overwrite git config
git config --global user.name "Adam Shaw"
vared -p "Enter your git email: " -c GIT_EMAIL
git config --global user.email "$GIT_EMAIL"

# set up PATH for tooling
export PATH="$PATH:$HOME/.toolbox/bin"

# brazil aliases
alias bb='brazil-build'
alias bbr='brazil-recursive-cmd --allPackages "brazil-build"'
