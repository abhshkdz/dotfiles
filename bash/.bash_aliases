#cloning from sdslabs git
sds_git() { 
    git clone git@git.sdslabs.co.in:"$1" 
}

#link repos to /var/www
rlnk() {
    dest="/var/www/$@"
    src=`pwd`
    sudo ln -s $src $dest
}

#navigation
alias ..='cd ..'
alias ..2='cd ../..'
alias ..3='cd ../../..'
alias ..4='cd ../../../..'
alias ..5='cd ../../../../..'

#apt
alias 'install'='sudo apt-fast install $1'
alias 'update'='sudo apt-fast update'
alias 'upgrade'='sudo apt-fast upgrade'

#ssh
s() {
    case "$1" in
        d)
            ssh "deploy@192.168.208.$2"
            ;;
        s)
            ssh "sdslabs@192.168.208.$2"
            ;;
    esac
}

#dropbox
d() {
    case "$1" in
        sds|s)
            cp "$2" /home/abhshkdz/Dropbox/SDSLabs/Abhishek/
            ;;
        music|m)
            cp "$2" /home/abhshkdz/Dropbox/Music Section/
            ;;
        family|f)
            cp "$2" /home/abhshkdz/Dropbox/Family/
            ;;
        public|p)
            cp "$2" /home/abhshkdz/Dropbox/Public/
            dropbox puburl "/home/abhshkdz/Dropbox/Public/$2" | xclip -selection clipboard
            ;;
        url)
            URL=`dropbox puburl $2`
            echo $URL
            echo $URL | xclip -selection clipboard
            ;;
    esac
}

#boom
alias 'B'='boom'
b() {
    case "$1" in
        pics|p)
            EXT=${2: -4}
            axel "$2" -o "/home/abhshkdz/Dropbox/Public/boom/$3$EXT"
            URL=`dropbox puburl "/home/abhshkdz/Dropbox/Public/boom/$3$EXT"`
            boom pics $3 $URL
            boom $3
            ;;
        memes|m)
            EXT=${2: -4}
            axel "$2" -o "/home/abhshkdz/Dropbox/Public/memes/$3$EXT"
            URL=`dropbox puburl "/home/abhshkdz/Dropbox/Public/memes/$3$EXT"`
            boom memes $3 $URL
            boom $3
            ;;
        *)
            boom
            ;;
    esac
}
