export EDITOR="vim"
source ~/.zsh.d/nin-vi-mode.zsh

source ~/.zsh.d/expand-alias.zsh

if [[ $TERM = linux ]]; then
  sudo loadkeys ~/.options/arch/vconsole/rebinds.map
fi
