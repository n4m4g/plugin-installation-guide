# Plugin-installation-guide
Installation guide of neovim, vim-plug and useful vim plugins.

<a href="https://www.linode.com/docs/guides/how-to-install-neovim-and-plugins-with-vim-plug/">reference</a>

## Remove vim and install required packages

```
sudo apt remove --purge vim neovim -y;
sudo apt install cmake -y;
```

## Install nvim 

```
curl -LO https://github.com/neovim/neovim/releases/latest/download/nvim.appimage
chmod u+x nvim.appimage
cp nvim.appimage ~/.local/bin/nvim
```
```
pip3 install --user flake8 neovim
```
   
## Clone vim-plug repos

```
curl -fLo ~/.local/share/nvim/site/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
```
   
## Reusing Vim configuration

[Credit](http://vimcasts.org/episodes/meet-neovim/)

```
mkdir -p ~/.config/nvim
touch ~/.config/nvim/init.vim

paste contents below

set runtimepath^=~/.vim runtimepath+=~/.vim/after
let &packpath = &runtimepath
source ~/.vimrc
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
 
