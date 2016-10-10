alias ls="ls -G"
alias grep="grep --color=always"
alias chrome='open -a "Google Chrome"'

parse_git_branch() {
     git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
}


export PS1="\[\033[95m\]\u@local \[\033[32m\]\w\[\033[33m\]\$(parse_git_branch)\[\033[00m\] $ "

test -e "${HOME}/.iterm2_shell_integration.bash" && source "${HOME}/.iterm2_shell_integration.bash"

export PATH=$PATH:/Applications/Postgres.app/Contents/Versions/latest/bin
