#!/bin/bash

# vim
ln -sv $PWD/vimrc $HOME/.vimrc
if [ ! -d "$HOME/.vim/colors" ] 
then
    mkdir -p $HOME/.vim/colors
fi
ln -sv $PWD/wombat256.vim $HOME/.vim/colors/wombat256.vim

# bash
ln -sv $PWD/bashrc $HOME/.bashrc
