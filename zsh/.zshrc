# Aliases
alias parse='(){ npm run -w @pk/parseserver $1 $2 $3 $4 $5 ;}'
alias cloud='(){ npm run -w @pk/cloud $1 $2 $3 $4 $5 ;}'
alias dev='(){ npm run dev <D-s>;}'
alias stamush='git commit --amend --no-edit'
alias gic='git commit'
alias fetchorigin='git fetch origin main:main'

source "${ZDOTDIR:-${HOME}}/.zshrc-`uname`"

