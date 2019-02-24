# Git
alias gs='git status -s'
alias ga='git add'
alias gp='git push'
alias gd='git diff'
alias gh='git diff HEAD'
alias gl="git log --color --graph --pretty=format:'%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset' --abbrev-commit"
alias gls='git ls-tree -r HEAD --name-only'

# Commit all and push
alias gx='git commit -a && git push'
alias gxm="git commit -am 'Minor change (reword)' && git push"

# Misc
alias j=jobs
alias brighton='curl wttr.in/brighton'
alias serve='python -m SimpleHTTPServer'
