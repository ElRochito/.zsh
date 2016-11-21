export ACKRC=".ackrc"
export PATH=""
export PATH=/usr/local/bin:/usr/local/sbin:~/.android/android-sdk/platform-tools:~/.android/android-sdk/tools:/opt/local/bin:/opt/local/sbin:~/bin:/~/.composer/vendor/bin:/Applications/Sublime\ Text\ 2.app/Contents/SharedSupport/bin:/usr/bin:/bin:/usr/sbin:/sbin:/usr/local/bin:/usr/X11/bin:$PATH
# export PATH=/usr/local/sbin:/usr/bin:/bin:/usr/sbin:/sbin/Users/julio/.android/android-sdk/platform-tools:/Users/julio/.android/android-sdk/tools:/opt/local/bin:/opt/local/sbin:/Users/julio/bin:/~/.composer/vendor/bin:/Applications/Sublime Text 2.app/Contents/SharedSupport/bin:

export JAVA_HOME=/Library/Java/JavaVirtualMachines/jdk1.8.0_101.jdk/Contents/Home
export MANPATH=/opt/local/share/man:$MANPATH
export LESS='--ignore-case --raw-control-chars'
export PAGER='less'
export EDITOR='sublime -w'
export PYTHONPATH=/usr/local/bin:~/.powerline/plugins:$PYTHONPATH
export ANDROID_HOME=/Volumes/SLAVE/Dev/work/_sdks/android
export GPGKEY="Julien ROCHE (Interaction) <julienr@interaction-multimedia.com>"
export GPGKEY="$(gpg -K | awk 'NR==3 {print $2}' | sed 's/2048R\///g')"
