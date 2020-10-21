## About

To generate a tags file for vim's help files we must use
vim's builtin function 

```vim
:helptags <directory>
```

Behind the scenes, vim does tag generation operation by itself. 

The code it uses can be found in the source file vim/src/help.c

You can use this ctags extension to generate tags outside of vim.

It looks for .txt and .help file extensions by default.

## Using the extension

You can use it directly with:

```sh
$ctags --options=vimhelp.ctags <file>
$ctags --options=vimhelp.ctags -R <directory>
```

Or you can add the vimhelp.ctags to somewhere ctags can find it directly.

From the ctags man pages:

> 1. $XDG_CONFIG_HOME/ctags, or $HOME/.config/ctags 
> if $XDG_CONFIG_HOME is not defined
> 2. $HOME/.ctags.d  
> 3. $HOMEDRIVE$HOMEPATH/ctags.d (in Windows)  
> 3. .ctags.d  
> 3. ctags.d  

Alternatively, the makefile provided can place it for you.
```sh
$make install
```

## References

+ [1]: [ctags optlib regex parser](https://docs.ctags.io/en/latest/optlib.html)
+ [2]: [writting vim help](https://vimhelp.org/helphelp.txt.html#help-writing)
