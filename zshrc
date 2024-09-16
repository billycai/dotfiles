export ZSH="$HOME/.oh-my-zsh"


ZSH_THEME="mh"
HYPHEN_INSENSITIVE="true"
ENABLE_CORRECTION="true"

plugins=(git)

source $ZSH/oh-my-zsh.sh

[ -f /opt/dev/dev.sh ] && source /opt/dev/dev.sh

yt () {
    pnpm test -- --watch $1
}


alias gpm="git checkout main;git pull origin main"
alias grm="git fetch origin main && git rebase origin/main"
export EDITOR=vim


function pv() {
    # Check if a branch is provided
    if [ -z "$1" ]; then
        echo "Usage: pv <branch>"
        return 1
    fi

    branch=$1

    # Change directory to 'web'
    dev cd web || { echo "Failed to change directory to 'web'"; return 1; }

    # Fetch the branch from the remote repository
    git fetch origin "$branch" || { echo "Failed to fetch branch '$branch'"; return 1; }

    # Check out the branch
    git checkout "$branch" || { echo "Failed to checkout branch '$branch'"; return 1; }

    # Run 'dev up'
    dev up || { echo "Failed to run 'dev up'"; return 1; }

    # Run 'pnpm prod vite'
    pnpm prod vite || { echo "Failed to run 'pnpm prod vite'"; return 1; }
}


if [ "$SPIN" ]; then
    if [ -e /etc/zsh/zshrc.default.inc.zsh ]; then
        source /etc/zsh/zshrc.default.inc.zsh
    fi
fi
