#!/bin/bash
cd ~
apt-get install vim
mkdir -p /home/matt/.vim/colors
apt-get install git
wget https://github.com/atweiden/vim-colors-behelit/blob/master/colors/behelit.vim
mv behelit.vim ~/.vim/colors
