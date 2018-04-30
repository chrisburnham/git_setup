#Git items to be added to .bashrc

# git branch on command prompt
PS1='\[\033[01;32m\]\u@\h \[\033[01;34m\]\w\[\033[0;37m\]$(parse_git_branch)\[\033[00m\]\$ '

parse_git_branch() {
  git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ \[\1\]/'
}
