os=`uname`

if [[ "$os" == 'Linux' ]]; then
  . apt-get.sh
elif [[ "$os" == 'Darwin' ]]; then
  . brew.sh
fi

. vim/install.sh
. zsh/install.sh
. git/install.sh

if [ ! -f ~/.aliases ]; then
  cp .aliases ~/.aliases
fi
