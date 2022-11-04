
# # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # 
# https://medium.com/@json_singh/ubuntu-like-terminal-in-mac-bash-9afe37b09aa
# # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # 
# for Brew
export PATH="/usr/local/bin:$PATH"

# Hides the default login message
export BASH_SILENCE_DEPRECATION_WARNING=1 

# set a fancy prompt (non-color, unless we know we "want" color)
case "$TERM" in
    xterm-color|*-256color) color_prompt=yes;;
esac

# Enable colors in bash

export CLICOLOR=1
export LSCOLORS=GxBxCxDxexegedabagaced
 
# get current git branch
parse_git_branch() {
    git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
}

# find username@hostname:$ 
export PS1="\[\033[01;32m\]\u@\h\[\033[00m\]:\[\033[01;34m\]\w\[\033[0;32m\]\$(parse_git_branch)\[\033[00m\]\$ "

# for bash completion
export BASH_COMPLETION_COMPAT_DIR="$(brew --prefix)/etc/bash_completion.d" 
[[ -r "$(brew --prefix)/etc/profile.d/bash_completion.sh" ]] && . "$(brew --prefix)/etc/profile.d/bash_completion.sh"

# # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # 
# # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # 

export ANDROID_HOME="$HOME/Library/Android/Sdk"
export PATH="$ANDROID_HOME/tools:$ANDROID_HOME/tools/bin:$ANDROID_HOME/platform-tools:$PATH"

# SDKROOT=xcrun --show-sdk-path
export SDKROOT=/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX12.3.sdk
export GEM_HOME=$HOME/.gem
export PATH=$GEM_HOME/bin:$PATH

. /usr/local/opt/asdf/libexec/asdf.sh
. /usr/local/opt/asdf/etc/bash_completion.d/asdf.bash

export LC_ALL=en_US.UTF-8

# some more ls aliases
alias ll='ls -alF'
alias la='ls -A'
alias l='ls -CF'

# The next line updates PATH for the Google Cloud SDK.
if [ -f $HOME/google-cloud-sdk/path.zsh.inc ]; then . $HOME/google-cloud-sdk/path.zsh.inc; fi

# The next line enables shell command completion for gcloud.
# if [ -f $HOME/google-cloud-sdk/completion.zsh.inc ]; then . $HOME/google-cloud-sdk/completion.zsh.inc; fi

export PATH=$HOME/google-cloud-sdk/bin:$PATH

# alias gta='git --git-dir=.gitalt'
alias gta='git'
alias gtu='gta pull'
alias gtc='gta add -A . && gta commit -m'
alias gtp='gta push'
alias gts='gta status'

# # Android command-line tools
# export ANDROID_HOME=$HOME/Android/Sdk
# export ANDROID_SDK=$ANDROID_HOME
# export ANDROID_SDK_ROOT=$ANDROID_HOME
# export ANDROID_AVD_HOME=$HOME/.android/avd
# export PATH=$PATH:$ANDROID_HOME/tools
# export PATH=$PATH:$ANDROID_HOME/tools/bin
# export PATH=$PATH:$ANDROID_HOME/cmdline-tools
# export PATH=$PATH:$ANDROID_HOME/cmdline-tools/bin
# export PATH=$PATH:$ANDROID_HOME/platform-tools

# # Ionic
# export CAPACITOR_ANDROID_STUDIO_PATH=/opt/android-studio/bin/studio.sh
# export PATH=$PATH:$CAPACITOR_ANDROID_STUDIO_PATH

alias usbreset='sudo killall -CONT -c usbd'

export FLUTTER_ROOT="$(asdf where flutter)"
export PATH="$PATH:$FLUTTER_ROOT"
export PATH="$PATH:$HOME/.pub-cache/bin"

# export FLUTTER_ROOT="$(which flutter)"
# export PATH="$PATH:$HOME/development/flutter/bin"

# XCode

export SDKROOT="$(xcrun -sdk macosx --show-sdk-path)"

# Flutter

alias fl='flutter'
alias flupgrade='fl pub upgrade && dart migrate --apply-changes'
alias flgenerate='flutter pub run build_runner build --delete-conflicting-outputs'
alias flgen='flutter pub run build_runner build'
alias flclean='flutter clean'
alias flpub='flutter pub get'
alias flrefresh='flclean && flpub'
alias flcoverage='rm -rf coverage/* && flutter test --coverage && lcov --directory lib/features --remove coverage/lcov.info "*failure.dart" "*_event.dart" "*.freezed.dart" "*_state.dart" -o coverage/new_lcov.info && genhtml coverage/new_lcov.info -o coverage/html && explorer coverage/html/'
alias flinstall='flrefresh && flutter build apk --release --flavor=dev && flutter install'

# .NET

# export DOTNET_ROOT=$HOME/dotnet
# export PATH=$PATH:$HOME/dotnet

alias t-hide="PS1='alvert@linux: '"

# Vagrant
alias vg="vagrant"
alias vgd="vg destroy"
alias vgp="vg up"

# Project settings:
export PROJECT_FROM_LOCALHOST=$HOME/Projects/medkortex
export PROJECT_INFRA_PATH=$PROJECT_FROM_LOCALHOST/infrastructure
export PROJECT_PATH=$PROJECT_FROM_LOCALHOST/mobile
export PROJECT_FUNCTIONS_PATH=$PROJECT_FROM_LOCALHOST/functions/medkortex-api/functions

export fdsa=''

export GOOGLE_APPLICATION_CREDENTIALS="$PROJECT_INFRA_PATH/.files/FILE.json"

# problema com [sed]-> illegal byte...
# export LANG=C
# export LC_ALL=C
# export LC_CTYPE=C

# problema com ruby pod install
export LC_ALL=en_US.UTF-8
test -e "${HOME}/.iterm2_shell_integration.bash" && source "${HOME}/.iterm2_shell_integration.bash"
