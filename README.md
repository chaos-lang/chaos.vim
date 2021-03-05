# Chaos.vim

Syntax and indent files for [Chaos](https://chaos-lang.org).

## Installation

### If using Vim:

Run the following:
```shell
$ mkdir -p ~/.vim/pack/plugins/start \
    && cd ~/.vim/pack/plugins/start
$ git clone https://github.com/chaos-lang/chaos.vim
```

### If using Neovim:

Run the following:
```shell
$ mkdir -p ~/.local/share/nvim/site/pack/plugins/start \
    && cd ~/.local/share/nvim/site/pack/plugins/start
$ git clone https://github.com/chaos-lang/chaos.vim
```

### If using vim-plug:

Add the `Plug` command to your .vimrc:
```vim
call plug#begin('~/.vim/plugged')
    " Add this line
    Plug 'chaos-lang/chaos.vim'
call plug#end()
```

Next, restart vim and run:
```vim
:PlugInstall
```

Licensed under the terms of the GNU Public License v3.0.
