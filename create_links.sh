#/bin/sh

create_link_home() {
    arg=$1
    config_file=$HOME"/."$arg
    [ -e $config_file ] && mv $config_file $config_file".bak"
    ln -s `pwd`/$arg $config_file
}

create_link_home vimrc
create_link_home zshrc
create_link_home gitconfig
