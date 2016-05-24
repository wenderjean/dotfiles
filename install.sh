os=`uname`

if [[ "$os" == 'Linux' ]]; then
  . apt-get.sh
elif [[ "$os" == 'Darwin' ]]; then
  . brew.sh
fi

if [ ! -f ~/.vimrc ]; then
  cp .vimrc ~/.vimrc
fi

if [ ! -d ~/.vim ]; then
  cp -r .vim ~/.vim
fi

if [ ! -f ~/.aliases ]; then
  cp .aliases ~/.aliases
fi

if [ ! -f ~/.zshrc ]; then
  cp .zshrc ~/.zshrc
fi

if [ ! -f ~/.gitconfig ]; then
  cp .gitconfig ~/.gitconfig
fi

#oh-my-zsh
curl -L https://github.com/robbyrussell/oh-my-zsh/raw/master/tools/install.sh | sh

#Vundle
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
vim +BundleInstall +qall
