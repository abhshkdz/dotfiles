lcd() { 
    cd "$@" && ls 
}
sds_git() { 
    git clone git@git.sdslabs.co.in:"$1" 
}
rlnk() {
    dest="/var/www/$@"
    src=`pwd`
    sudo ln -s $src $dest
}
alias 'sds-git'='sds_git'
alias 'cd'='lcd'
alias ..='cd ..'
alias ..2='cd ../..'
alias ..3='cd ../../..'
alias ..4='cd ../../../..'
alias ..5='cd ../../../../..'
alias 'install'='sudo apt-fast install $1'
alias 'update'='sudo apt-fast update'
alias 'upgrade'='sudo apt-get upgrade'
alias 'ssh-d-208'='ssh deploy@192.168.208.208'
alias 'ssh-s-208'='ssh sdslabs@192.168.208.208'
alias 'ssh-d-206'='ssh deploy@192.168.208.206'
alias 'ssh-s-206'='ssh sdslabs@192.168.208.206'
alias 'ssh-d-213'='ssh deploy@192.168.208.213'
alias 'ssh-s-213'='ssh sdslabs@192.168.208.213'
