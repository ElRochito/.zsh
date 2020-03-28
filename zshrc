source ~/.zsh/exports.zsh


alias growl='_(){ terminal-notifier -message "${1:-'OK'}" -activate "com.googlecode.iterm2" -sound Glass }; _'

DISABLE_AUTO_UPDATE="true"

export UPDATE_ZSH_DAYS=13

DISABLE_AUTO_TITLE="true"

COMPLETION_WAITING_DOTS="true"

HIST_STAMPS="mm/dd/yyyy"

source ~/.zplug/init.zsh

source ~/.zsh/aliases.zsh
source ~/.zsh/soyhuce.zsh
source ~/.zsh/functions.zsh
source ~/.zsh/history.zsh
source ~/.zsh/setopt.zsh

# zplug
zplug "plugins/git",   from:oh-my-zsh
zplug "plugins/laravel5",   from:oh-my-zsh
zplug "plugins/git-flow-avh",   from:oh-my-zsh
zplug "plugins/git-extras",   from:oh-my-zsh
zplug "plugins/history",   from:oh-my-zsh
zplug "plugins/sublime",   from:oh-my-zsh
zplug "plugins/osx",   from:oh-my-zsh
zplug "plugins/iterm2",   from:oh-my-zsh
zplug "plugins/web-search",   from:oh-my-zsh
zplug "jimeh/zsh-peco-history", defer:2
zplug "gabrielelana/awesome-terminal-fonts"
zplug "wookayin/anybar-zsh"
zplug "zsh-users/zsh-apple-touchbar", defer:2
zplug "b4b4r07/httpstat", as:command, use:'(*).sh', rename-to:'$1'
zplug "lib/clipboard", from:oh-my-zsh, if:"[[ $OSTYPE == *darwin* ]]"
zplug "k4rthik/git-cal", as:command, frozen:1
# zplug "plugins/git-flow",   from:oh-my-zsh
# zplug "zsh-users/zsh-syntax-highlighting", defer:2
# zplug "zsh-users/zsh-autosuggestions"
# zplug "zsh-users/zsh-completions"

zplug '~/.zsh/themes', from:local, as:theme

if ! zplug check --verbose; then
    printf "Install? [y/N]: "
    if read -q; then
        echo; zplug install
    fi
fi

zplug load
zplug clean
zplug clear

autoload -U +X bashcompinit && bashcompinit
complete -o nospace -C /usr/local/bin/mc mc

source ~/.deployer_completion

[[ -e ~/.phpbrew/bashrc ]] && source ~/.phpbrew/bashrc

eval "$(jenv init -)"
eval "$(pyenv init -)"  #init pyenv

[[ -f /usr/local/share/zsh/site-functions/_git ]] && \
    rm -f /usr/local/share/zsh/site-functions/_git
