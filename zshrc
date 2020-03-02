# update PATH
# export ANDROID_HOME=~/Library/Android/sdk/
# export PATH=~/bin:$PATH:$ANDROID_HOME/platform-tools

# enable command completion
autoload -Uz compinit && compinit

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

# enable ruby
eval "$(rbenv init -)"

# tab completion feels better
setopt +o menucomplete

