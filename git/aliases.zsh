# Use `hub` as our git wrapper:
#   http://defunkt.github.com/hub/
hub_path=$(which hub)
if (( $+commands[hub] ))
then
  alias git=$hub_path
fi

# The rest of my fun git aliases
alias gl='git pull --prune'
alias glog="git log --graph --pretty=format:'%Cred%h%Creset %an: %s - %Creset %C(yellow)%d%Creset %Cgreen(%cr)%Creset' --abbrev-commit --date=relative"
alias gp='git push origin HEAD'
alias gd='git diff'
alias gc='git commit'
alias gca='git commit -a'
alias gco='git checkout'
alias gcb='git copy-branch-name'
alias gb='git branch'
alias gs='git status -sb' # upgrade your git if -sb breaks for you. it's fun.

gnb () {
  git fetch origin
  git checkout --track -b wip/$(date +%Y-%m-%d)/${1:-tmp} ${2:-origin/master}
}

checkoutbranch () {
  branches=`git branch | grep -i $1 | tr -d '* '`
  if [[ `echo "$branches" | wc -l | tr -d ' '` != 1 ]]; then
    echo "Matched multiple branches:"
    git branch | grep --color -i $1
    return 1
  fi
  git checkout $branches
}

