#!/bin/bash

echo "Configuring Neovim!!!" 
echo ""

INSTALL_DIR="${HOME}/.config/nvim"

if [[ ! -d $INSTALL_DIR ]]; then
  mkdir $INSTALL_DIR;
fi

cp init.vim $INSTALL_DIR/init.vim
cp -R lua $INSTALL_DIR/lua
cp -R plugin $INSTALL_DIR/plugin

echo "Neovim configured."
