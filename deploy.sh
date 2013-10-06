#!/usr/bin/env bash

./check_packages.sh
cp .vimrc .gvimrc
cp .tmux.conf .vimrc .gvimrc ~/

if [ ! -d ~/.vim/bundle/vundle ]
  then
    git clone https://github.com/gmarik/vundle.git ~/.vim/bundle/vundle
    vim +BundleInstall +qa
fi
if [ ! -d  ~/.bin ]
  then
    mkdir ~/.bin
fi
if [ ! -f ~/.bin/lein ]
  then
    wget -O ~/bin/lein https://raw.github.com/technomancy/leiningen/stable/bin/lein
    chmod 755 ~/.bin/lein
    PATH=~/.bin:$PATH
    export PATH
    echo "Don't not forget to add ~/.bin to your enviroment file."
fi
