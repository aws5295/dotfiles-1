if [[ -n ${1+x} ]] && [[ "$1" == "gitmask" ]]; then
  # hack lifted from: https://stackoverflow.com/a/3666941/4921402
  return
fi

load_secrets() {
  local my_secrets=$(cd $GIT_ROOT && cd .. && readlink -f secrets)
  if [[ ! -d $my_secrets ]]; then
    echo "dir $my_secrets does not exist. aborting."
    return 0
  fi

  echo "secrets $my_secrets detected. sourcing"
  source $my_secrets/secrets.zsh
}

# zsh parameter substitution: http://zsh.sourceforge.net/Intro/intro_12.html
unamestr=$(uname -a)
if [[ $unamestr:l == *"darwin"*  ]]; then
  source ~/.options/osx/osx.zsh $1
  if [[ -n ${1+x} ]] && [[ "$1" == "setup" ]]; then
    load_secrets
  fi
elif [[ $unamestr:l == *"ubuntu"*  ]]; then
  source ~/.options/ubuntu/ubuntu.zsh $1
  if [[ -n ${1+x} ]] && [[ "$1" == "setup" ]]; then
    source ~/.options/ubuntu/setup.zsh
    load_secrets
  fi
fi

