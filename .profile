# Navigation
alias la='ls -A'
alias l='ls -ACF'
alias ll='ls -l'
alias lla='ls -Al'

alias ..='cd ..'
md () { mkdir -p "$1" && cd "$1"; }

# Util
alias c='clear'
alias getip='curl ipinfo.io'
alias n='nano'

# Git
#
# git add
alias ga='git add'

# git branch
alias gba='git branch -avv'
alias gb='git branch'
alias gbd='git branch -d'

# git checkout
alias gc='git checkout'
alias gcb='git checkout -b'
alias gct='git checkout -t'

# git pull
alias gpr='git pull --rebase'

# git push
function push () {
    if [ -z "$1" ]; then
        branch=$(git branch --no-color | grep '^\*' | cut -d' ' -f2);
    else
        branch="$1";
    fi
    git push origin "$branch";
}

# git push && track
function pusht () {
    if [ -z "$1" ]; then
        branch=$(git branch --no-color | grep '^\*' | cut -d' ' -f2);
    else
        branch="$1";
    fi
    git push -u origin "$branch";
}

# git stash
function stash () { git stash "$@"; }

# git commit
function commit () { git commit -m "$1"; }
function squish () { ga .; commit "squish"; git rebase -i HEAD~"$1"; }
alias squash=squish

# git rebase
alias grc='git rebase --continue'

# git status - all the typos
alias gstat='git status'
alias gstta='git status'
alias gsatt='git status'
alias gstt='git status'
alias gsat='git status'
alias gsta='git status'
