#!/usr/bin/env bash
set -e
shopt -s extglob

TARGET="$HOME/.config/nvim"

# Create the target directory if it doesn't exist
mkdir -p "$TARGET"

# Copy everything except packer.sh
cp -a ./*!(packer.sh|uninstall.sh) "$TARGET"
