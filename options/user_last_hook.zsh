unamestr=$(uname -a)
if [[ $unamestr:l == *"ubuntu"* ]]; then
  source ~/.options/ubuntu/last_hook.zsh
elif [[ $unamestr:l == *"darwin"* ]]; then
  source ~/.options/osx/last_hook.zsh
fi
