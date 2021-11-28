# Plugin-installation-guide
Installation guide of neovim, vim-plug and useful vim plugins.

<a href="https://www.linode.com/docs/guides/how-to-install-neovim-and-plugins-with-vim-plug/">reference</a>

## AutoInstall

```
source run.sh
```

## Convert tab to space

Explain
```
- tabstop: tab width, 1 tab to n space or n space to 1 tab
- shiftwidth: indent width
- expandtab: use space rather than tab
- noexpandtab: use tab rather than space
- retab: apply the settings
```

Replace tab with 4 space
```
set tabstop=4 | set shiftwidth=4 | set expandtab | %retab!
" first three are settings, last one is apply
" or use abbreviation
set ts=4 | set sw=4 | set et | %retab!
```

Replace 4 space with tab
```
set tabstop=4 | set shiftwidth=4 | set noexpandtab | %retab!
" first three are settings, last one is apply
" or use abbreviation
set ts=4 | set sw=4 | set noet | %retab!
```

ref: [link](https://stackoverflow.com/questions/9104706/how-can-i-convert-spaces-to-tabs-in-vim-or-linux)

## Smart way to move between windows
```
map <C-j> <C-W>j
map <C-k> <C-W>k
map <C-h> <C-W>h
map <C-l> <C-W>l
```

## key mapping

Show key mapping
```
:map
```

Unmap
```
:unmap <Key>
```

ref: [link](http://yyq123.blogspot.com/2010/12/vim-map.html)
