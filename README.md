# Plugin-installation-guide
Installation guide of neovim, vim-plug and useful vim plugins.

<a href="https://www.linode.com/docs/guides/how-to-install-neovim-and-plugins-with-vim-plug/">reference</a>

## Install nvim and other required packages

   ```
   sudo apt purge vim -y && sudo apt autoremove -y;
   sudo apt update && sudo apt install vim python3-dev git build-essential cmake -y;
   
   # w/ sudo
   sudo apt install neovim
   
   # w/o sudo
   wget --quiet https://github.com/neovim/neovim/releases/download/nightly/nvim.appimage --output-document nvim
   chmod +x nvim
   mv nvim ~/.local/bin
   ```
   ```
   pip install flake8 neovim
   ```
   
## Clone vim-plug repos

   ```
   curl -fLo ~/.local/share/nvim/site/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
   ```
   
## Setup ~/.config/nvim/init.vim

   ```vim
   """"""""""""""""""""
   " vim-plug
   """"""""""""""""""""
   call plug#begin('~/.vim/plugged')
   Plug 'ycm-core/YouCompleteMe', { 'do': './install.py --clang-completer' }
   Plug 'preservim/nerdtree'
   Plug 'vim-syntastic/syntastic'
   Plug 'vim-airline/vim-airline'
   call plug#end()

   """"""""""""""""""""
   " youcompleteme 
   """"""""""""""""""""
   let g:ycm_global_ycm_extra_conf='~/.vim/plugged/YouCompleteMe/.ycm_extra_conf.py'
   let g:ycm_confirm_extra_conf=0

   """"""""""""""""""""
   " nerdtree 
   """"""""""""""""""""
   map <F8> :NERDTreeToggle<CR>

   """"""""""""""""""""
   " syntastic 
   """"""""""""""""""""
   set statusline+=%#warningmsg#
   set statusline+=%{SyntasticStatuslineFlag()}
   set statusline+=%*
   let g:syntastic_always_populate_loc_list = 1
   let g:syntastic_auto_loc_list = 1
   let g:syntastic_check_on_open = 1
   let g:syntastic_check_on_wq = 0
   let g:syntastic_python_checkers = ['flake8']

   """"""""""""""""""""
   " interface 
   """"""""""""""""""""
   set splitright
   set encoding=utf-8
   set number relativenumber " show hybrid line number
   set scrolloff=5
   set cursorline

   """"""""""""""""""""
   " text format 
   """"""""""""""""""""
   set smartindent
   set expandtab             " replace tab with space
   set tabstop=4             " modify display width of tab
   set shiftwidth=4          " modify display width of indent of tab

   """"""""""""""""""""
   " searching 
   """"""""""""""""""""
   set hlsearch
   set incsearch
   set smartcase

   """"""""""""""""""""
   " key remap 
   """"""""""""""""""""
   nmap <C-j> <S-_>i#<Space><Esc>
   vmap <C-j> <S-i>#<Space><Esc>
   nmap <C-k> <S-_>xx<Space><Esc>
   nnoremap <leader>gl :YcmCompleter GoToDeclaration<CR>
   nnoremap <leader>gf :YcmCompleter GoToDefinition<CR>
   nnoremap <leader>go :YcmCompleter GoTo<CR>
   ```

   ```
   :w
   :source %
   :PlugInstall
   ```

## Add site-packages to sys.path

1. Find the path where the module was located

```
import [module]
output = [module].__file__
print(output)
```
   
2. Add output path to PYTHONPATH environment variable

```
export PYTHONPATH=[output]:$PYTHONPATH
```
 
