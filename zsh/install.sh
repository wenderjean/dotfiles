. oh-my-zsh.sh

if [ ! -f ~/.zshrc ]; then
  cp ./zsh/.zshrc ~/.zshrc
fi

setopt +o nomatch
