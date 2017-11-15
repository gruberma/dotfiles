#!/bin/bash

# Before executing this script make sure you have GNU Stow installed!!

function check_prog() {
if ! hash $1 > /dev/null 2>&1; then
    echo "Command not found: $1. Aborting..."
    exit 1
fi
}

check_prog stow
check_prog curl

mkdir -p $HOME/.config

#stow --no-folding autostart
#stow awesomewm
#stow bash
#stow compton
#stow --no-folding fish
#stow environment
#stow i3
#stow --no-folding moc
#stow --no-folding mpd; mkdir ~/.config/mpd/playlists
#stow --no-folding qtile
#stow --no-folding ranger
#stow redshift
#stow rofi
#stow termite
#stow tmux
#stow --no-folding vim; mkdir -p $HOME/.vim/{swapfiles,undodir}; curl -fLo ~/.vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
#ln -s ~/.vim ~/.config/nvim; ln -s ~/.vimrc ~/.config/nvim/init.vim #Installs nvim config (important: stow vim first)
#stow wallpaper
#stow xorg
#stow ytcc
#stow zathura
#stow zsh


cat << EOF

There are still things to do if you installed one of the following configs!

VIM:
To complete the vim configuration open vim and execute :PlugInstall

EOF

