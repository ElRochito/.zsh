# go
export GOPATH=$HOME/.go
export GOBIN=$HOME/.go/bin

# nvm
unset npm_config_prefix
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# If you come from bash you might have to change your $PATH.
export PATH="$HOME/bin:$HOME/.composer/vendor/bin:$HOME/.fastlane/bin:$HOME/.jenv/bin:$HOME/.local/bin:$HOME/.symfony/bin:/$HOME/Projects/mobile/flutter/bin:/usr/local/opt/curl-openssl/bin:/usr/local/opt/curl/bin:/usr/local/opt/python/libexec/bin:$HOME/.nvm/versions/node/`nvm current`/bin:$GOBIN:$PATH";

# node
export NODE_PATH=$HOME/.nvm/versions/node/`nvm current`/lib/node_modules

# ssh
export SSH_KEY_PATH="~/.ssh/id_rsa"

# java
export JAVA_HOME=/Library/Java/JavaVirtualMachines/openjdk-12.0.0.jdk/Contents/Home

# editor
export EDITOR='subl'

# android
export ANDROID_HOME=/Volumes/SLAVE/Dev/work/_sdks/android

# vault
export VAULT_ADDR=https://vault.soyhuce.lan:443

# zplug
export ZPLUG_HOME=$HOME/.zplug
