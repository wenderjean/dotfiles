os=`uname`

if [[ "$os" == 'Linux' ]]; then
  . dnf.sh
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

#oh-my-zsh
curl -L https://github.com/robbyrussell/oh-my-zsh/raw/master/tools/install.sh | sh

if [ ! -f ~/.zshrc ]; then
  cp .zshrc ~/.zshrc
fi

if [ ! -f ~/.gitconfig ]; then
  cp .gitconfig ~/.gitconfig
fi

#Vundle
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
vim +BundleInstall +qall

#Solarized
git clone https://github.com/altercation/vim-colors-solarized.git
mkdir -p ~/.vim/colors && cp vim-colors-solarized/colors/solarized.vim "$_"
rm -rf vim-colors-solarized
