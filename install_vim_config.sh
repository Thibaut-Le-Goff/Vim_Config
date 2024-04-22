#!/bin/bash


if [ -e ~/.vimrc ]; then
    echo "There is already a .vimrc file."
    cat ~/.vimrc > ~/vimrc_old.txt 
    echo "The previous one has been saved in vimrc_old.txt."
else
    echo "There is no .vimrc file."
fi

cat vimrc_thibaut.txt > ~/.vimrc 

mkdir ~/vim_plugins
git clone https://github.com/VundleVim/Vundle.vim ~/vim_plugins/Vundle.vim
git clone https://github.com/preservim/nerdtree ~/vim_plugins/nerdtree

echo "Type in vim :PluginInstall to install the plugin."
