#/bin/sh

create_link_home() {
    dir=$1
    dest=$2
    src=$3
    
    config_file="$dir/$dest"
    [ -e "$config_file" ] && mv "$config_file" "$config_file.bak"
    ln -s `pwd`"/$src" "$config_file"
}

create_link_home "$HOME" .vimrc vimrc
create_link_home "$HOME" .zshrc zshrc
create_link_home "$HOME" .gitconfig gitconfig

APP_SUPPORT_DIR="$HOME/Library/Application Support/Code/User"
create_link_home "$APP_SUPPORT_DIR" settings.json settings.json 
create_link_home "$APP_SUPPORT_DIR" keybindings.json keybindings.json 
