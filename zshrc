export ZSH="$HOME/.oh-my-zsh"


ZSH_THEME="mh"
HYPHEN_INSENSITIVE="true"
ENABLE_CORRECTION="true"

plugins=(git)

source $ZSH/oh-my-zsh.sh

[ -f /opt/dev/dev.sh ] && source /opt/dev/dev.sh

yt () {
    yarn test --no-graphql $1
}


alias gpm="git checkout master;git pull origin master"
export EDITOR=vim
