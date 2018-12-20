## LARAVEL
alias llog="tail -fn 200 storage/logs/laravel.log"
alias clog="echo '' > storage/logs/laravel.log && llog"
#alias artisan="php artisan --env=testing"
alias artisan="php artisan"
alias mf='artisan migrate:fresh'
alias mfs='artisan migrate:fresh --seed'

## GIT FLOW
alias gflft='git flow feature track'
alias gflfc='git flow feature checkout'

## GIT
alias gs='git status'
alias gpo='git push origin head'
alias gfc='git fetch && git checkout '

alias st='subl'
alias zshconfig="st ~/.zshrc"
alias ohmyzsh="st ~/.oh-my-zsh"

# Lock the screen (when going AFK)
alias afk="/System/Library/CoreServices/Menu\ Extras/User.menu/Contents/Resources/CGSession -suspend"

## MINIO
export MINIO_ACCESS_KEY=miniouser
export MINIO_SECRET_KEY=miniopassword
export MINIO_DOMAIN=minio.develop

#alias miniostart='minio server ~/Tools/minio > /dev/null 2>&1 &'
alias miniostart='minio server ~/Tools/minio'
alias miniostop='mc admin service stop'

# Make vim the default editor.
export EDITOR='vim';

# Increase Bash history size. Allow 32³ entries; the default is 500.
export HISTSIZE='32768';
export HISTFILESIZE="${HISTSIZE}";
# Omit duplicates and commands that begin with a space from history.
export HISTCONTROL='ignoreboth';

# Prefer US English and use UTF-8.
export LANG='en_US.UTF-8';
export LC_ALL='en_US.UTF-8';

# Highlight section titles in manual pages.
export LESS_TERMCAP_md="${yellow}";

# Don’t clear the screen after quitting a manual page.
export MANPAGER='less -X';

# Always enable colored `grep` output.
export GREP_OPTIONS='--color=auto';

# nvm
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

export GOPATH="$HOME/go"
export PATH="$PATH:$GOPATH/bin"
