. ~/.dotfiles/vim/vundle.sh
. ~/.dotfiles/vim/theme.sh

if [ ! -f ~/.vimrc ]; then
  cp ~/.dotfiles/vim/.vimrc ~/.vimrc
fi

if [ ! -d ~/.vim ]; then
  cp -r ~/.dotfiles/vim/.vim ~/.vim
fi
