# shellcheck shell=bash

install_homebrew() {
  if [[ -x /opt/homebrew/bin/brew ]]; then
    echo "Homebrew already installed"
  else
    NONINTERACTIVE=1 /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
  fi
}

load_homebrew() {
  echo "Load Homebrew"
  eval "$(/opt/homebrew/bin/brew shellenv zsh)"
}


ensure_homebrew() {
  [[ -z ${loaded_homebrew+x} ]] \
    && install_homebrew \
    && load_homebrew
  loaded_homebrew='true'
}

