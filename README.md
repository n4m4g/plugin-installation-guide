# Plugin-installation-guide
Installation guide about ycm.

## Install latest vim and other required packages

   ```
   sudo apt purge vim -y && sudo apt autoremove -y;
   sudo add-apt-repository ppa:jonathonf/vim;
   sudo apt update && sudo apt install vim python3-dev git build-essential cmake -y;
   ```
   
## Clone vim-plug repos

   ```
   curl -fLo ~/.vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
   ```
   
## Setup .vimrc

   ```vim
   call plug#begin('~/.vim/plugged')
   Plug 'git@github.com:Valloric/YouCompleteMe.git'
   call plug#end()

   let g:ycm_global_ycm_extra_conf='~/.vim/plugged/YouCompleteMe/.ycm_extra_conf.py'
   let g:ycm_confirm_extra_conf=0
   
   " custom settings
   " ===============
   
   set hlsearch
   set smartindent
   set splitright
   set encoding=utf-8

   " show hybrid line number
   set number relativenumber

   " replace tab with space
   set expandtab

   " modify display width of tab
   set tabstop=4

   " modify display width of indent of tab
   set shiftwidth=4

   " the number of context lines 
   " you would like to see above and below the cursor
   set scrolloff=5

   nmap<C-j> <S-_>i#<Space><Esc>
   nmap<C-k> <S-_>xx<Space><Esc>
   vmap<C-j> <S-i>#<Space><Esc>
   ```

   ```
   :w
   :source %
   :PlugInstall
   ```

## Compile YCM
   
   ```
   cd ~/.vim/plugged/YouCompleteMe
   python3 install.py --clang-completer
   ```
