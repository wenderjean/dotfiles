. vundle.sh
. theme.sh

if [ ! -f ~/.vimrc ]; then
  cp .vimrc ~/.vimrc
fi

if [ ! -d ~/.vim ]; then
  cp -r .vim ~/.vim
fi
