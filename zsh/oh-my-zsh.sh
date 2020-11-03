#!/bin/bash

if ! $(which zsh > /dev/null 2>&1); then
  curl -L https://github.com/robbyrussell/oh-my-zsh/raw/master/tools/install.sh | sh
fi
