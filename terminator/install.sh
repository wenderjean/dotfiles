#!/bin/bash

echo "Configuring Terminator profile!!!" 
echo ""

INSTALL_DIR="${HOME}/.config/terminator"

if [[ ! -d $INSTALL_DIR ]]; then
  mkdir $INSTALL_DIR;
fi

cp terminator.profile $INSTALL_DIR/config

echo "Terminator profile configured."
