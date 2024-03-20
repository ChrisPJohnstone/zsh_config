parse_git_branch() {
    git branch 2> /dev/null | sed -n -e 's/^\* \(.*\)/ [\1]/p'
}
setopt PROMPT_SUBST
export PROMPT='%S[%D{%T}] [%1~]$(parse_git_branch)%s '

alias grep='grep --exclude-dir "__pycache__" --exclude-dir "cdk.out" --exclude-dir ".git"'
