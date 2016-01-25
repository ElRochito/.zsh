eval $(gpg-agent --daemon)

# Source every file in this directory
source ~/.zsh/checks.zsh
source ~/.zsh/exports.zsh
source ~/.zsh/colors.zsh
source ~/.zsh/setopt.zsh
source ~/.zsh/prompt.zsh
source ~/.zsh/functions.zsh
source ~/.zsh/aliases.zsh
source ~/.zsh/history.zsh
source ~/.zsh/autocomplete.zsh

# Sourcing main .profile file
# in case important stuff is in there
source ~/.profile

. /usr/local/lib/python2.7/site-packages/powerline/bindings/zsh/powerline.zsh

if [[ -d ~/.fortune ]]; then
  fortune ~/.fortune/fortune | cowsay -f $(ls /usr/local/Cellar/cowsay/3.03/share/cows | gshuf -n1) | lolcat
fi
