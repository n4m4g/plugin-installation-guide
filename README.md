# plugin-installation-guide
Installation guide about ycm for C/C++ and jedi for python.

## Install latest vim and other required packages

   ```
   sudo apt purge vim -y && sudo apt autoremove -y;
   sudo add-apt-repository ppa:jonathonf/vim;
   sudo apt update && sudo apt install vim python3-dev git build-essential cmake -y;
   ```
   
## Clone vim plugin repos

   ```
   git clone --recursive https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim;
   git clone --recursive https://github.com/ycm-core/YouCompleteMe.git ~/.vim/bundle/YouCompleteMe;
   ```
   
## Setup .vimrc

   ```vim
   set nocompatible              " be iMproved, required
   filetype off                  " required
   set rtp+=~/.vim/bundle/Vundle.vim
   call vundle#begin()
   Plugin 'VundleVim/Vundle.vim'
   Plugin 'Valloric/YouCompleteMe'
   call vundle#end()            " required
   filetype plugin indent on    " required

   let g:ycm_global_ycm_extra_conf='~/.vim/bundle/YouCompleteMe/.ycm_extra_conf.py'
   let g:ycm_confirm_extra_conf=0
   ```

## Install plugins

   ```
   vim +PluginInstall +qall
   ```
   
## Compile YCM
   
   ```
   cd ~/.vim/bundle/YouCompleteMe
   python3 install.py --clang-completer
   ```
