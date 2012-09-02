"Dirty" setup of my python ide:

Important features:

    * Pyflakes
    * Pylint (F7)
    * pysmell
    * pep8 (F7)
    * NERDTree
    * Taglist
    * ctrlp (VimScript native fast live file search on your project files)
    * vim-powerline, nice status line

If you want to use my setup:

# WARNING: backup your $HOME/.vimrc and $HOME/.vim before trying my setup

## Dependencies

    * pylint
    * pep8
    * flex8
    * pyflakes
    * pysmell
    * ctags
    * git
    * vim +python

## Installation

    git clone https://github.com/kpanic/dotvim-python-ide.git $HOME/.vim

    ln -s $HOME/.vimrc $HOME/.vim/vimrc


to install pysmell just:

    sudo easy_install pysmell

or:

    pip install pysmell

then run:

    pysmell /on/yourproject
