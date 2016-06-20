#!/bin/bash

#---------- vim ----------#
cd ~
apt-get install vim
mkdir -p /home/matt/.vim/colors
wget https://raw.githubusercontent.com/atweiden/vim-colors-behelit/master/colors/behelit.vim
mv behelit.vim ~/.vim/colors
sh -c 'echo "[[ $COLORTERM = gnome-terminal && ! $TERM = screen-256color ]] && TERM=xterm-256color" >> /home/matt/.bashrc'
wget https://raw.githubusercontent.com/mhaffner/new-system-installation/master/.vimrc
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
vim +PluginInstall +qall

#--------- spacemacs -----------#
mkdir /home/matt/bin
cd /home/matt/bin
apt-get install -y build-essential
sudo apt-get -y --force-yes build-dep emacs24
wget http://ftp.gnu.org/gnu/emacs/emacs-24.4.tar.gz
tar -xf emacs-24.4.tar.* && cd emacs-24.4
./configure
make
make install
git clone https://github.com/syl20bnr/spacemacs ~/.emacs.d

#--------- git -----------#
apt-get install git
