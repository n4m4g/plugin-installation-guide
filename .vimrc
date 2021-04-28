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
let g:ycm_always_populate_location_list = 1

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
syntax on
filetype indent on
filetype plugin on
set nocompatible
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
set path+=**
set wildmenu
set hlsearch
set incsearch
set smartcase

""""""""""""""""""""
" key remap
""""""""""""""""""""
inoremap ( ()<Esc>i
inoremap ' ''<Esc>i
inoremap " ""<Esc>i
inoremap [ []<Esc>i

inoremap ) <Right>
inoremap ] <Right>

nmap <C-j> <S-_>i#<Space><Esc>
vmap <C-j> <S-i>#<Space><Esc>
nmap <C-k> <S-_>xx<Space><Esc>
map <F5> <Esc>:%s/\s\+$//e<CR> \| <Esc>:w<CR>
map <F6> <Esc>:ll<CR>
nnoremap <leader>gl :YcmCompleter GoToDeclaration<CR>
nnoremap <leader>gf :YcmCompleter GoToDefinition<CR>
nnoremap <leader>go :YcmCompleter GoTo<CR>
