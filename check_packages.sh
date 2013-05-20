#!/usr/bin/env bash

function checkpackage {
    echo "Checking package $1.."
    PKG=`dpkg-query -W $1 | awk '{print $1}'`
    if [ "$PKG" != "$1" ]; then
        sudo aptitude install $1 -y
    else
        echo "Package $1 is already installed."
    fi
}

checkpackage ack-grep
checkpackage exuberant-ctags
checkpackage tmux
checkpackage nodejs
