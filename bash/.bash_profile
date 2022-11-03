export ANDROID_HOME="$HOME/Library/Android/Sdk"
export PATH="$ANDROID_HOME/tools:$ANDROID_HOME/tools/bin:$ANDROID_HOME/platform-tools:$PATH"

# SDKROOT=xcrun --show-sdk-path
export SDKROOT=/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX12.3.sdk
export GEM_HOME=$HOME/.gem
export PATH=$GEM_HOME/bin:$PATH

. /usr/local/opt/asdf/libexec/asdf.sh
. /usr/local/opt/asdf/etc/bash_completion.d/asdf.bash

export LC_ALL=en_US.UTF-8
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

alias ll='ls -alF'
alias usbreset='sudo killall -CONT -c usbd'

export FLUTTER_ROOT="$(asdf where flutter)"
export PATH="$PATH:$FLUTTER_ROOT"
export PATH="$PATH:$HOME/.pub-cache/bin"

# export FLUTTER_ROOT="$(which flutter)"
# export PATH="$PATH:$HOME/development/flutter/bin"

export SDKROOT="$(xcrun -sdk macosx --show-sdk-path)"

alias flrefresh="flutter clean && flutter pub get"
alias flgen="flutter pub run build_runner build"
alias flgenerate="flutter pub run build_runner build --delete-conflicting-outputs"

# Project settings:
export PROJECT_FROM_LOCALHOST=$HOME/Projects/matrix
export PROJECT_INFRA_PATH=$PROJECT_FROM_LOCALHOST/infrastructure
export PROJECT_PATH=$PROJECT_FROM_LOCALHOST/mobile
export PROJECT_FUNCTIONS_PATH=$PROJECT_FROM_LOCALHOST/functions/matrix-api/functions

export fdsa=''

export GOOGLE_APPLICATION_CREDENTIALS="$PROJECT_INFRA_PATH/.files/"

# problema com [sed]-> illegal byte...
# export LANG=C
# export LC_ALL=C
# export LC_CTYPE=C

# problema com ruby pod install
export LC_ALL=en_US.UTF-8