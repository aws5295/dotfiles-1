#!/usr/bin/env zsh
# author: Filipe Silva (ninrod)

SCRIPTPATH=$(cd $(dirname $0); pwd -P) && cd $SCRIPTPATH
GIT_ROOT=$(git rev-parse --show-toplevel)

source $GIT_ROOT/zsh/termcolors.zsh
source $GIT_ROOT/zsh/constants.zsh

source $GIT_ROOT/boot/guard.zsh
source $GIT_ROOT/boot/functions.zsh $1

source $GIT_ROOT/boot/symlinks.zsh

source ~/.options/shell-options.zsh gitmask

source $GIT_ROOT/boot/zsh-deps.zsh
source $GIT_ROOT/boot/vim-deps.zsh
source $GIT_ROOT/boot/other-deps.zsh

source ~/.options/shell-options.zsh setup
