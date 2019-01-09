source /Users/steffan/git-completion.bash
export LC_CTYPE=C 
export LANG=C

# for running locally
for f in ~/local-config/*.sh; do source $f; done

#This section adds the directory path and Git branch name into the CLI, to the left.
parse_git_branch() {
  git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
}

#####################
# Terminal colors
#####################
export PS1="[\[\033[36m\]\u \[\033[m\]\[\033[32m\]\[\033[33;1m\]\w\[\033[m\]]\[\033[0;31m\]\$(parse_git_branch)\[\033[m\] "
export CLICOLOR=1
export LSCOLORS=GxFxBxDxCxegedabagacad


##################
# Aliases
##################

alias gap='git add --patch'

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion