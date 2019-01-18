# plugin-installation-guide
Installation guide about vim ycm...

## Install YouCompleteMe with Vundle
1. Set up Vundle.
   `git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim`
2. Configure Plugins.
   Put this at the top of your `.vimrc` to use Vundle. Remove plugins you don't need, they are for illustration purposes.

   ```vim
   set nocompatible              " be iMproved, required
   filetype off                  " required

   " set the runtime path to include Vundle and initialize
   set rtp+=~/.vim/bundle/Vundle.vim
   call vundle#begin()
   " alternatively, pass a path where Vundle should install plugins
   "call vundle#begin('~/some/path/here')

   " let Vundle manage Vundle, required
   Plugin 'VundleVim/Vundle.vim'
   Plugin 'Valloric/YouCompleteMe'

   " All of your Plugins must be added before the following line
   call vundle#end()            " required
   filetype plugin indent on    " required
   " To ignore plugin indent changes, instead use:
   " filetype plugin on
   "
   " Brief help
   " :PluginList       - lists configured plugins
   " :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
   " :PluginSearch foo - searches for foo; append `!` to refresh local cache
   " :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
   "
   " see :h vundle for more details or wiki for FAQ
   " Put your non-Plugin stuff after this line
   ```
3. Install Plugins
   Launch vim and run :PluginInstall
   
4. Compiling YCM with semantic support for C-family languages since (The ycmd server SHUT DOWN (restart with ':YcmRestartServer')).
   `cd ~/.vim/bundle/YouCompleteMe`
   `python3 install.py --clang-completer`
   
5. Copy the ycm config file to .vim
   `cd .vim`
   `cp ./bundle/YouCompleteMe/third_party/ycmd/.ycm_extra_conf.py .`
6. Add lib path and include path of C/C++ to .ycm_extra_conf.py
   ```vim
   flags = [
   '-Wall',
   '-Wextra',
   '-Werror',
   '-Wno-long-long',
   '-Wno-variadic-macros',
   '-fexceptions',
   '-DNDEBUG',
   # You 100% do NOT need -DUSE_CLANG_COMPLETER and/or -DYCM_EXPORT in your flags;
   # only the YCM source code needs it.
   '-DUSE_CLANG_COMPLETER',
   '-DYCM_EXPORT=',
   # THIS IS IMPORTANT! Without the '-x' flag, Clang won't know which language to
   # use when compiling headers. So it will guess. Badly. So C++ headers will be
   # compiled as C headers. You don't want that so ALWAYS specify the '-x' flag.
   # For a C project, you would set this to 'c' instead of 'c++'.
   '-x',
   'c++',
   '-I',
   '/usr/include',
   '-isystem',
   '/usr/lib/gcc/x86_64-linux-gnu/7/include',
   '-isystem',
   '/usr/include/x86_64-linux-gnu',
   '-isystem'
   '/usr/include/c++/7',
   '-isystem',
   '/usr/include/c++/7/bits'
   '-isystem',
   'cpp/pybind11',
   '-isystem',
   'cpp/BoostParts',
   '-isystem',
   get_python_inc(),
   '-isystem',
   'cpp/llvm/include',
   '-isystem',
   'cpp/llvm/tools/clang/include',
   '-I',
   'cpp/ycm',
   '-I',
   'cpp/ycm/ClangCompleter',
   '-isystem',
   'cpp/ycm/tests/gmock/gtest',
   '-isystem',
   'cpp/ycm/tests/gmock/gtest/include',
   '-isystem',
   'cpp/ycm/tests/gmock',
   '-isystem',
   'cpp/ycm/tests/gmock/include',
   '-isystem',
   'cpp/ycm/benchmarks/benchmark/include',
   ]
   ```
