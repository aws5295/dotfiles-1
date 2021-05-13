# autosuggestions
source "$zsh_deps/zsh-users/zsh-autosuggestions/zsh-autosuggestions.zsh"

# ctrl + <space> to accept the current partial suggestion
bindkey '^ ' forward-word

# ctrl + z accepts the entire suggestion
bindkey '^Z' autosuggest-accept