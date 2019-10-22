#/bin/sh

create_link_home() {
    ln -s `pwd`/$1 $HOME/.$1
}

create_link_home vimrc
create_link_home zshrc
create_link_home gitconfig
