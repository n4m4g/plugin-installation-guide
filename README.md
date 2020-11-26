# Plugin-installation-guide
Installation guide about ycm.

## Install latest vim and other required packages

   ```
   sudo apt purge vim -y && sudo apt autoremove -y;
   sudo add-apt-repository ppa:jonathonf/vim;
   sudo apt update && sudo apt install vim python3-dev git build-essential cmake -y;
   ```
   ```
   pip install flake8
   ```
   
## Clone vim-plug repos

   ```
   curl -fLo ~/.vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
   ```
   
## Setup .vimrc

   ```vim
   call plug#begin('~/.vim/plugged')
   Plug 'ycm-core/YouCompleteMe', { 'do': './install.py --clang-completer' }
   Plug 'preservim/nerdtree'
   Plug 'vim-syntastic/syntastic'
   call plug#end()

   " config for ycm
   let g:ycm_global_ycm_extra_conf='~/.vim/plugged/YouCompleteMe/.ycm_extra_conf.py'
   let g:ycm_confirm_extra_conf=0

   " config for nerdtree
   map <F8> :NERDTreeFind<CR>

   " config for syntastic
   set statusline+=%#warningmsg#
   set statusline+=%{SyntasticStatuslineFlag()}
   set statusline+=%*
   let g:syntastic_always_populate_loc_list = 1
   let g:syntastic_auto_loc_list = 1
   let g:syntastic_check_on_open = 1
   let g:syntastic_check_on_wq = 0
   let g:syntastic_python_checkers = ['flake8']

   " custom config
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

   " comment single line
   nmap<C-j> <S-_>i#<Space><Esc>
   
   " uncomment single line
   nmap<C-k> <S-_>xx<Space><Esc>
   
   " comment multiple lines
   vmap<C-j> <S-i>#<Space><Esc>
   ```

   ```
   :w
   :source %
   :PlugInstall
   ```
