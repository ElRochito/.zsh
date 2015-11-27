export ACKRC=".ackrc"
export PATH=~/.android/android-sdk/platform-tools/:~/.android/android-sdk/tools/:/opt/local/bin:/opt/local/sbin:~/bin:/~/.composer/vendor/bin:/Applications/Sublime\ Text\ 2.app/Contents/SharedSupport/bin:$PATH
export MANPATH=/opt/local/share/man:$MANPATH
export LESS='--ignore-case --raw-control-chars'
export PAGER='less'
export EDITOR='subl -w'
export PYTHONPATH=/usr/local/bin:~/.powerline/plugins:$PYTHONPATH
export ANDROID_HOME=/Volumes/SLAVE/Dev/work/_sdks/android
export GPGKEY="Julien ROCHE (Interaction) <julienr@interaction-multimedia.com>"
export GPGKEY="$(gpg -K | awk 'NR==3 {print $2}' | sed 's/2048R\///g')"
