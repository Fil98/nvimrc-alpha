#!/bin/sh
#install
pacman -S curl git python yarn nodejs xclip neovim ruby python-pip ctags 
sudo pip install neovim

#create folders
mkdir -p ~/.config/nvim/autoload
mkdir -p ~/.config/nvim/plugged
mkdir -p ~/.config/nvim/colors

#install plug
curl -fLo ~/.config/nvim/autoload/plug.vim \
https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

#install config
cp * ~/.config/nvim/

cd ~
nvim -c PlugUpgrade -c PlugInstall -c PlugUpdate -c q -c q
nvim -c UpdateRemotePlugins -c q -c q

echo done!


