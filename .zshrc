# Make the root of Boxen available.
export BOXEN_HOME=/opt/boxen

# Add homebrew'd stuff to the path.
PATH=$BOXEN_HOME/homebrew/bin:$BOXEN_HOME/homebrew/sbin:$PATH

# Add homebrew'd stuff to the manpath.
export MANPATH=$BOXEN_HOME/homebrew/share/man:$MANPATH

# Add any binaries specific to Boxen to the path.
PATH=$BOXEN_HOME/bin:$PATH

# Add ./bin to the path. This happens after initialization to make
# sure local stubs take precedence over stuff like rbenv.

export PATH=bin:$PATH

# Boxen is active.
if [ -d "$BOXEN_HOME/repo/.git" ]; then
  export BOXEN_SETUP_VERSION=`GIT_DIR=$BOXEN_HOME/repo/.git git rev-parse --short HEAD`
else
  echo "Boxen could not load properly!"
fi

DISABLE_AUTO_UPDATE=true

source ~/antigen.zsh

# Load the oh-my-zsh's library.
# antigen use oh-my-zsh

# Bundles from the default repo (robbyrussell's oh-my-zsh).
antigen bundle git
antigen bundle command-not-found
antigen-bundle vi-mode
antigen-bundle brew


# Syntax highlighting bundle.
antigen bundle zsh-users/zsh-syntax-highlighting
antigen-bundle zsh-users/zsh-completions


# Load the theme.
# antigen theme robbyrussell

# Tell antigen that you're done.
antigen apply

set -o vi

source ~/.zz/z.sh

bindkey '^R' history-incremental-pattern-search-backward


alias c="clear"
alias gs="git status"
log () {
  git log \
    --pretty=format:'%C(auto)%h (%ad) %d (%C(yellow)%an%C(reset)) %s' \
    --date=short \
    --graph \
    --all \
    --decorate \
    --relative-date \
    --abbrev-commit \
    --color
}

PATH=$PATH:/usr/local/lib/python2.7/site-packages
PATH=~/.apportable/SDK/bin:$PATH

export PROMPT='%n@%m:%~%# '
export RPROMPT=$(date +%T)

export NDK_ROOT=~/.Android_NDK/android-ndk-r9d

#git-prompt
# source ~/.zsh/git-prompt/zshrc.sh
# export PROMPT='%B%m%~%b$(git_super_status) %# '

source ~/.nvm/nvm.sh

alias wow='git status'
alias such='git'
alias very='git'
alias so='git'


alias much='git'

alias grep='grep --color=auto'
disable -a g
g () {
  grep $@ ./* --color=auto --recursive
}


