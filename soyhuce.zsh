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
alias miniostart='minio server --address ":1985"  ~/Tools/minio'
alias miniostop='mc admin service stop'

alias check_sonar="checkSonar"
function checkSonar () {
    find ./tests -type f -name '*.php' | xargs sed -e 's/@covers//' -i ""

    ./vendor/bin/phpunit --dump-xdebug-filter xdebug-filter.php
    ./vendor/bin/phpunit --prepend xdebug-filter.php --config=phpunit.xml

    sonar-scanner -Dsonar.host.url=http://localhost:30555

    rm -fr xdebug-filter.php

    git reset --hard HEAD
}

# Make vim the default editor.
export EDITOR='vim';



# Prefer US English and use UTF-8.
export LANG='en_US.UTF-8';
export LC_ALL='en_US.UTF-8';

# Highlight section titles in manual pages.
export LESS_TERMCAP_md="${yellow}";

# Don’t clear the screen after quitting a manual page.
export MANPAGER='less -X';

# Always enable colored `grep` output.
export GREP_OPTIONS='--color=auto';
