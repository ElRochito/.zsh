# go
export GOPATH=$HOME/.go
export GOBIN=$HOME/.go/bin

# nvm
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# If you come from bash you might have to change your $PATH.
export PATH="$HOME/bin:/usr/local/bin:/usr/local/sbin:/Users/julio/.nvm/versions/node/`nvm current`/bin:$GOBIN:$HOME/.fastlane/bin:$PATH"

# node
export NODE_PATH=/Users/julio/.nvm/versions/node/`nvm current`/lib/node_modules

# ssh
export SSH_KEY_PATH="~/.ssh/id_rsa"

# Path to your oh-my-zsh installation.
export ZSH=/Users/julio/.oh-my-zsh

export JAVA_HOME=/Library/Java/JavaVirtualMachines/jdk1.8.0_101.jdk/Contents/Home

export EDITOR='sublime -w'

export ANDROID_HOME=/Volumes/SLAVE/Dev/work/_sdks/android
