# Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
export ZSH_THEME="steeef"

# Set to this to use case-sensitive completion
# CASE_SENSITIVE="true"

# Comment this out to disable weekly auto-update checks
# DISABLE_AUTO_UPDATE="true"

# Uncomment following line if you want to disable colors in ls
# DISABLE_LS_COLORS="true"

# Uncomment following line if you want to disable autosetting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment following line if you want disable red dots displayed while waiting for completion
# DISABLE_COMPLETION_WAITING_DOTS="true"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Example format: plugins=(rails git textmate ruby lighthouse)
plugins=(git rails ruby asdf)

source $ZSH/oh-my-zsh.sh
source ~/.aliases

take()
{
  mkdir $1
  cd $1
}

#increase the history size
export HISTSIZE=20000
export HISTFILESIZE=20000

# Customize to your needs...
export PATH=/usr/bin:/bin:/usr/sbin:/sbin:/usr/local/bin:$PATH
if which rbenv > /dev/null; then eval "$(rbenv init - zsh)"; fi
export PATH=/usr/local/share/npm/bin:$PATH

if which pyenv > /dev/null; then eval "$(pyenv init -)"; fi
if which pyenv-virtualenv-init > /dev/null; then eval "$(pyenv virtualenv-init -)"; fi

function today {
  declare -a TEXTCOLORS=("1" "2" "3" "4" "5" "6" "7")
  choosen=`shuf -i 1-${#TEXTCOLORS[@]} -n 1`

  tput setaf ${TEXTCOLORS[$choosen]};tput bold; echo "TODAY IS: "`date +%^A`, `date +%^B`, `date +%F`"\e[39m"
}
