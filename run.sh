sudo apt install python3-dev git build-essential cmake clang clang-tidy -y;

git clone --recursive https://github.com/VundleVim/Vundle.vim.git   ~/.vim/bundle/Vundle.vim;
git clone --recursive https://github.com/ycm-core/YouCompleteMe.git ~/.vim/bundle/YouCompleteMe;
git clone --recursive https://github.com/davidhalter/jedi-vim.git   ~/.vim/bundle/jedi-vim;

cp vimrc.config ~/.vimrc;

vim +PluginInstall +qall;

cd ~/.vim/bundle/YouCompleteMe;
python3 install.py --clang-completer --system-libclang --clang-tidy;

cp ~/.vim/bundle/YouCompleteMe/third_party/ycmd/.ycm_extra_conf.py ~/.vim;
