export ANDROID_SDK="/Users/ppalma/Library/Android/sdk"
export ANDROID_NDK=${ANDROID_SDK}/ndk/22.1.7171670/toolchains
export ANDROID_NDK_ROOT="/Users/ppalma/Library/Android/sdk/ndk/22.1.7171670"
api=30

# display current branch to the right
autoload -Uz vcs_info
precmd_vcs_info() { vcs_info }
precmd_functions+=( precmd_vcs_info )
setopt prompt_subst
RPROMPT=\$vcs_info_msg_0_
zstyle ':vcs_info:git:*' formats '%b'

# display machine:current folder
PROMPT='%m:%1~ %# '

# enable color on listing
export CLICOLOR=1

# setup for mono frwk
#export MONO_GAC_PREFIX="/usr/local"

# require confirmation before delete
alias rm='rm -i'

# this may conflict with rubies pre 2.4
export RUBY_CONFIGURE_OPTS="--with-openssl-dir=$(brew --prefix openssl@1.1)"

# enable ruby
eval "$(rbenv init -)"

# tab completion feels better
setopt +o menucomplete

alias python=/usr/local/bin/python3

#source "/usr/local/Caskroom/google-cloud-sdk/latest/google-cloud-sdk/path.zsh.inc"
#source "/usr/local/Caskroom/google-cloud-sdk/latest/google-cloud-sdk/completion.zsh.inc"

