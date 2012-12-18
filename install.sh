#!/usr/bin/env bash

echo "~~ Installing .vim files ~~"

if [ ! $(which git) ]; then
    echo "Git is not installed! Aborting..."
    exit 1
fi

if [ ! -d "~/.vim" ]; then
    echo "~/.vim directory already exists! Aborting..."
    exit 1
fi

if [ ! -f "~/.vimrc" ]; then
    echo "~/.vimrc file already exists! Aborting..."
    exit 1
fi

if [ ! -f "~/.gvimrc" ]; then
    echo "~/.gvimrc file already exists! Aborting..."
    exit 1
fi

git clone https://github.com/lucassmagal/dotvim.git ~/.vim
cd ~/.vim
git submodule init
git submodule update
ln ~/.vim/.vimrc ~/.vimrc
ln ~/.vim/.gvimrc ~/.gvimrc

echo "~~ DONE! Now, you can open ~/.vim/README.markdown and read some commands ~~"
