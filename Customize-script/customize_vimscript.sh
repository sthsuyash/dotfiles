#!/bin/bash

# script to modify vim editor

# give execute permission to script
# $ sudo chmod +x ./customize_vimscript.sh

# install vim if not present
sudo apt-get install vim

# download vim plugin
curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

# download latest version of node.js (for now using v19.x)
curl -fsSL https://deb.nodesource.com/setup_19.x | sudo -E bash - &&\
sudo apt-get install -y nodejs

# copy the required vim files to home directory
cp .vimrc $HOME
