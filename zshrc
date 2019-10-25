# update PATH
export PATH=~/bin:$PATH

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
export MONO_GAC_PREFIX="/usr/local/opt/mono"

# require confirmation before delete
alias rm='rm -i'

# enable ruby
eval "$(rbenv init -)"
