# update PATH
export ANDROID_HOME=~/Library/Android/sdk/
export PATH=~/bin:$PATH:$ANDROID_HOME/platform-tools

# display current branch to the right
autoload -Uz vcs_info
precmd_vcs_info() { vcs_info }
precmd_functions+=( precmd_vcs_info )
setopt prompt_subst
RPROMPT=\$vcs_info_msg_0_
zstyle ':vcs_info:git:*' formats '%b'

# display machine:current folder
PROMPT='%m:%1~ %# '

export CLICOLOR=1
#export MONO_PATH="/usr/local/opt/mono/lib/mono/4.7.2-api"
#export MONO_GAC_PREFIX="/usr/local"

# require confirmation before delete
alias rm='rm -i'

# enable ruby
eval "$(rbenv init -)"

# tab completion feels better
setopt +o menucomplete
