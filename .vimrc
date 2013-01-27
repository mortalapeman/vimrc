set nocompatible               " be iMproved
filetype off                   " required!

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

" let Vundle manage Vundle
" required! 
Bundle 'gmarik/vundle:'

" My Bundles
Bundle 'guns/vim-clojure-static'
Bundle 'tpope/vim-foreplay'
Bundle 'tpope/vim-classpath'
Bundle 'scrooloose/nerdtree'

imap jj <ESC>
syntax on
