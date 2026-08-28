# .bashrc - sourced by interactive bash shells

export EDITOR=vim
export HISTSIZE=5000
export HISTCONTROL=ignoredups:erasedups
shopt -s histappend
shopt -s checkwinsize

alias ll='ls -alh --color=auto'
alias gs='git status -sb'
alias gd='git diff'
alias gl='git log --oneline --graph --decorate -20'
alias ..='cd ..'
alias ...='cd ../..'

parse_git_branch() {
  git branch 2>/dev/null | sed -n 's/^\* //p'
}

PS1='\[\e[32m\]\u@\h\[\e[0m\]:\[\e[34m\]\w\[\e[33m\] $(parse_git_branch)\[\e[0m\]\$ '
