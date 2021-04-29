#!/usr/bin/env bash

sudo apt remove --purge vim neovim -y;
sudo apt install cmake -y;

curl -LO https://github.com/neovim/neovim/releases/latest/download/nvim.appimage
chmod u+x nvim.appimage
mv nvim.appimage ~/.local/bin/nvim

pip3 install --user --upgrade flake8 neovim

cp .vimrc ~/.vimrc

mkdir -p ~/.config/nvim
cp init.vim ~/.config/nvim/init.vim

curl -fLo ~/.local/share/nvim/site/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

echo 'vim pluginstall!!'
