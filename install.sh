#!/usr/bin/env bash

echo "~~ Installing .vim files ~~"

if [ ! $(which git) ]; then
echo "Git is not installed! aborting..."
    exit 1
fi

git clone https://github.com/lucassmagal/dotvim.git ~/.vim
cd ~/.vim
git submodule init
git submodule update
ln ~/.vim/.vimrc ~/.vimrc
ln ~/.vim/.gvimrc ~/.gvimrc

echo "~~ DONE! Now, you can open ~/.vim/README.markdown and read some commands ~~"
