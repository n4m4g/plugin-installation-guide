# plugin-installation-guide
Installation guide about ycm for C/C++ and jedi for python.

## Install required package

   `sudo apt install python3-dev git build-essential cmake clang clang-tidy -y`

## Clone required repos

   ```
   git clone --recursive https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim;
   git clone --recursive https://github.com/ycm-core/YouCompleteMe.git ~/.vim/bundle/YouCompleteMe;
   git clone --recursive https://github.com/davidhalter/jedi-vim.git ~/.vim/bundle/jedi-vim;
   ```
   
## Setup .vimrc

   ```vim
   set nocompatible              " be iMproved, required
   filetype off                  " required

   set rtp+=~/.vim/bundle/Vundle.vim
   call vundle#begin()

   Plugin 'VundleVim/Vundle.vim'
   Plugin 'Valloric/YouCompleteMe'
   Plugin 'davidhalter/jedi-vim'

   call vundle#end()            " required
   filetype plugin indent on    " required

   let g:ycm_global_ycm_extra_conf='~/.vim/.ycm_extra_conf.py'
   ```

## Install plugins

   `vim +PluginInstall +qall`

## Compile YCM
   
   `cd ~/.vim/bundle/YouCompleteMe`
   
   `python3 install.py --clang-completer --system-libclang --clang-tidy`

## Copy the ycm config file to .vim.

   `cp ~/.vim/bundle/YouCompleteMe/third_party/ycmd/.ycm_extra_conf.py ~/.vim`
