"Dirty" setup of my python ide:

Important features:

    * Pyflakes
    * Pylint on save
    * pysmell
    * pep8
    * NERDTree
    * Taglist
    * command-T (a fast live file search on your project files)

If you want to use my setup:

# WARNING: backup your $HOME/.vimrc and $HOME/.vim before trying my setup

## Dependencies

    * pylint
    * pep8
    * pyflakes
    * git
    * ruby and vim +ruby (if you want to use command-T) 32bit compiled under
      ubuntu

## Installation

    git clone https://github.com/kpanic/dotvim-python-ide.git $HOME/.vim

    ln -s $HOME/.vimrc $HOME/.vim/vimrc

## Notes

command-T segfaults on ubuntu 11.04, you have to update your vim
A "hack" is to grab the latest vim source from oneiric
http://packages.ubuntu.com/oneiric/editors/vim and recompile for example
with:

    fakeroot debian/rules binary

then:

    sudo dpkg -i vim-*hg*deb vim_7.3.154+hg~74503f6ee649-2ubuntu2_i386.deb

if you want to recompile also the command-T module do (for 64bit arch(s)):

    cd $HOME/.vim/ruby/command-t
    ruby extconf.rb
    make

to install pysmell just:

    sudo easy_install pysmell

or:

    pip install pysmell

then run:

    pysmell /on/yourproject
