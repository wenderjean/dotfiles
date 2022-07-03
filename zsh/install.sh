#! /usr/bin/env zsh

. ~/.dotfiles/zsh/oh-my-zsh.sh

if [ ! -a ~/.dotfiles/zsh/.zshrc ]; then
  cp ~/.dotfiles/zsh/.zshrc ~/.zshrc
fi

sudo chsh -s /bin/zsh

# setopt +o nomatch
