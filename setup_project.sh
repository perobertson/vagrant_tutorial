#!/usr/bin/bash

# Install the dotfiles
[[ ! -d ~/.oh-my-zsh ]] && git clone git://github.com/robbyrussell/oh-my-zsh.git  ~/.oh-my-zsh
if [[ ! -d ~/.dotfiles ]]; then
  git clone git://github.com/perobertson/dotfiles ~/.dotfiles
  cd ~/.dotfiles
  rake install[true]
fi
