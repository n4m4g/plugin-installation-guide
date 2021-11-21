#!/usr/bin/env bash

# install required packages
sudo apt remove --purge vim neovim -y;
sudo apt install cmake git python3-pip -y;
pip3 install --user --upgrade flake8 neovim

# download nvim bin to local/bin
curl -LO https://github.com/neovim/neovim/releases/latest/download/nvim.appimage
chmod u+x nvim.appimage
mv nvim.appimage ~/.local/bin/nvim
echo "export PATH=\$PATH:~/.local/bin/" >> ~/.bashrc
source ~/.bashrc

# copy nvim config
cp .vimrc ~/.vimrc
mkdir -p ~/.config/nvim
cp init.vim ~/.config/nvim/init.vim

# install nvim plugin
curl -fLo ~/.local/share/nvim/site/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
nvim +PlugInstall +qa
