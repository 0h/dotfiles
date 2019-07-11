
ZSH_DISABLE_COMPFIX=true
# Set CLICOLOR if you want Ansi Colors in iTerm2 
export CLICOLOR=1
# Set colors to match iTerm2 Terminal Colors
export TERM=xterm-256color
# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

export LC_ALL=en_US.UTF-8

# Path to your oh-my-zsh installation.
export ZSH=/Users/halilb/.oh-my-zsh
alias ls='ls -a'
export PATH="/usr/local/bin:$PATH"
export PATH=/opt/local/bin:/opt/local/sbin:$PATH
export PATH="/Applications/Visual Studio Code.app/Contents/Resources/app/bin:$PATH"
export PATH="/usr/local/opt/sqlite/bin:$PATH"
export ANDROID_HOME=$HOME/Library/Android/sdk
export PATH=$PATH:$ANDROID_HOME/emulator
export PATH=$PATH:$ANDROID_HOME/tools
export PATH=$PATH:$ANDROID_HOME/tools/bin
export PATH=$PATH:$ANDROID_HOME/platform-tools
export GOPATH=$HOME/go
# Set name of the theme to load. Optionally, if you set this to "random"
# it'll load a random theme each time that oh-my-zsh is loaded.
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
ZSH_THEME="lambda-mod"

plugins=(git)

source $ZSH/oh-my-zsh.sh

function gs() {
    git add .
    git commit -a -m "$1"
    git push
}

export NVM_DIR="$HOME/.nvm"
  [ -s "/usr/local/opt/nvm/nvm.sh" ] && . "/usr/local/opt/nvm/nvm.sh"  # This loads nvm
  [ -s "/usr/local/opt/nvm/etc/bash_completion" ] && . "/usr/local/opt/nvm/etc/bash_completion"  # This loads nvm bash_completion
