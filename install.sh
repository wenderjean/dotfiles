#!/bin/bash

set -eu

os=`uname`

INSTALL_DIR="${HOME}/.dotfiles"

if ! $(which git > /dev/null 2>&1); then
  echo "ERROR: Yow, I need git... gimme git!"
  exit 1
fi

if [[ ! -d $INSTALL_DIR ]]; then
  echo "ERROR: Please clone this repository in ~/.dotfiles"
fi

if [[ "$os" == 'Linux' ]]; then
  . apt-get.sh
elif [[ "$os" == 'Darwin' ]]; then
  . brew.sh
fi

. zsh/install.sh
. git/install.sh
. asdf/install.sh
. terminator/install.sh
. nvim/packer.sh

if [ ! -f ~/.aliases ]; then
  cp .aliases ~/.aliases
fi

if [[ ! -f $HOME/.ssh/id_rsa.pub ]]; then
  echo "Generating SSH key...\n"

  ssh-keygen -t rsa

  echo "\nYour key has been generated. Now go to GitHub."
fi

echo ""
echo "All done. You can now start ZSH."
