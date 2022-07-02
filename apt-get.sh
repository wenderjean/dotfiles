#! /usr/bin/env zsh

sudo add-apt-repository ppa:gnome-terminator
sudo add-apt-repository ppa:agornostal/ulauncher

sudo apt-get update

sudo apt-get install -y nvim
sudo apt-get install -y zsh
sudo apt-get install -y terminator
sudo apt-get install -y silversearcher-ag
sudo apt-get install -y ulauncher

sudo apt-get install -y htop ca-certificates curl gnupg lsb-release

sudo mkdir -p /etc/apt/keyrings
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo gpg --dearmor -o /etc/apt/keyrings/docker.gpg

echo "deb [arch=$(dpkg --print-architecture) signed-by=/etc/apt/keyrings/docker.gpg] https://download.docker.com/linux/ubuntu$(lsb_release -cs) stable" | sudo tee /etc/apt/sources.list.d/docker.list > /dev/null

sudo apt-get update
sudo apt-get install -y docker-ce docker-ce-cli containerd.io docker-compose-plugin
