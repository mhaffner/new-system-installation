#!/bin/bash

#--------- git -----------#
apt-get install git

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
git clone -b develop https://github.com/syl20bnr/spacemacs ~/.emacs.d

#--------- google chrome -----------#
cd /tmp
wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
sudo dpkg -i google-chrome-stable_current_amd64.deb
sudo apt-get -f install
cd ~


#--------- latest version of R -----------#
sudo sh -c 'echo "deb http://cran.rstudio.com/bin/linux/ubuntu trusty/" >> /etc/apt/sources.list'
gpg --keyserver keyserver.ubuntu.com --recv-key E084DAB9
gpg -a --export E084DAB9 | sudo apt-key add -
sudo apt-get update
sudo apt-get install r-base

#--------- latest version of qgis -----------#
sudo sh -c 'echo "deb http://qgis.org/debian trusty main" >> /etc/apt/sources.list'
sudo sh -c 'echo "deb-src http://qgis.org/debian trusty main" >> /etc/apt/sources.list'
sudo apt-key adv --keyserver keyserver.ubuntu.com --recv-key 3FF5FFCAD71472C4
sudo apt-get update
sudo apt-get install -y qgis python-qgis qgis-plugin-grass
