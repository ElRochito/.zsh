# go
export GOPATH=$HOME/.go
export GOBIN=$HOME/.go/bin

# nvm
unset npm_config_prefix
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# If you come from bash you might have to change your $PATH.
export PATH="$HOME/bin:/usr/local/bin:/usr/local/sbin:/Users/julio/.nvm/versions/node/`nvm current`/bin:$GOBIN:$HOME/.fastlane/bin:$HOME/.composer/vendor/bin:$PATH"

# node
export NODE_PATH=/Users/julio/.nvm/versions/node/`nvm current`/lib/node_modules

# ssh
export SSH_KEY_PATH="~/.ssh/id_rsa"

# zsh installation
export ZSH=/Users/julio/.oh-my-zsh

# java
export JAVA_HOME=/Library/Java/JavaVirtualMachines/openjdk-11.0.2.jdk/Contents/Home

# editor
export EDITOR='subl'

# android
export ANDROID_HOME=/Volumes/SLAVE/Dev/work/_sdks/android

# vault
export VAULT_ADDR=https://vault.soyhuce.lan:443

export ZPLUG_HOME=/Users/julio/.zplug
