#!/usr/bin/env bash

git clone https://github.com/gmarik/vundle.git ~/.vim/bundle/vundle
cp .vimrc .gvimrc ~/
vim +BundleInstall +qa
if [ ! -d  ~/bin ]
    mkdir ~/bin
if
wget -O ~/bin/lein https://raw.github.com/technomancy/leiningen/stable/bin/lein
chmod 755 ~/bin/lein
