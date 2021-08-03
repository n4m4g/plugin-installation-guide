# Plugin-installation-guide
Installation guide of neovim, vim-plug and useful vim plugins.

<a href="https://www.linode.com/docs/guides/how-to-install-neovim-and-plugins-with-vim-plug/">reference</a>

## AutoInstall

```
source run.sh
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
