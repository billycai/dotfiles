export ZSH="$HOME/.oh-my-zsh"


ZSH_THEME="mh"
HYPHEN_INSENSITIVE="true"
ENABLE_CORRECTION="true"

plugins=(git)

source $ZSH/oh-my-zsh.sh

[ -f /opt/dev/dev.sh ] && source /opt/dev/dev.sh

yt () {
    pnpm test -- --watch
}


alias gpm="git checkout main;git pull origin main"
export EDITOR=vim


if [ "$SPIN" ]; then
    if [ -e /etc/zsh/zshrc.default.inc.zsh ]; then
        source /etc/zsh/zshrc.default.inc.zsh
    fi
fi
