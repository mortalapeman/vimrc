set nocompatible               " be iMproved
filetype off                   " required!

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

" let Vundle manage Vundle
" required! 
Bundle 'gmarik/vundle:'

" My Bundles
Bundle 'guns/vim-clojure-static'
Bundle 'tpope/vim-fireplace'
Bundle 'tpope/vim-classpath'
Bundle 'scrooloose/nerdtree'
Bundle 'kien/rainbow_parentheses.vim'
Bundle 'tpope/vim-fugitive'
Bundle 'jpalardy/vim-slime'
Bundle 'chmllr/vim-colorscheme-elrodeo'
Bundle 'Lokaltog/vim-distinguished'
Bundle 'flazz/vim-colorschemes'
Bundle 'mileszs/ack.vim'
Bundle 'mattn/zencoding-vim'
Bundle 'majutsushi/tagbar'
Bundle 'scrooloose/syntastic'
Bundle 'pangloss/vim-javascript'

" For rainbow parens.
let g:rbpt_colorpairs = [
    \ ['brown',       'RoyalBlue3'],
    \ ['Darkblue',    'SeaGreen3'],
    \ ['darkgray',    'DarkOrchid3'],
    \ ['darkgreen',   'firebrick3'],
    \ ['darkcyan',    'RoyalBlue3'],
    \ ['darkred',     'SeaGreen3'],
    \ ['darkmagenta', 'DarkOrchid3'],
    \ ['brown',       'firebrick3'],
    \ ['gray',        'RoyalBlue3'],
    \ ['black',       'SeaGreen3'],
    \ ['darkmagenta', 'DarkOrchid3'],
    \ ['Darkblue',    'firebrick3'],
    \ ['darkgreen',   'RoyalBlue3'],
    \ ['darkcyan',    'SeaGreen3'],
    \ ['darkred',     'DarkOrchid3'],
    \ ['red',         'firebrick3'],
    \ ]
let g:rbpt_max = 16
let g:rbpt_loadcmd_toggle = 0

" Map escape to jj 
inoremap jj <ESC>

" Needed for vim clojure static
syntax on
filetype plugin indent on

" Always on for rainbow parentheses
au VimEnter * RainbowParenthesesToggle
au Syntax * RainbowParenthesesLoadRound
au Syntax * RainbowParenthesesLoadSquare
au Syntax * RainbowParenthesesLoadBraces

" Omni complete on
set ofu=syntaxcomplete#Complete

" Setup vim-slime to default to tmux
let g:slime_target = "tmux"

" Always on line numbers and no word wrap
set nowrap
set nu

" Setup tabs to be the way I like
set tabstop=4
set shiftwidth=4
set expandtab

" Set tagbar toggle to F8
noremap <F8> :TagbarToggle<CR>

" Set awesome color scheme
colorscheme darkBlue

" Setup NERDTreeToggle
let mapleader=","
noremap <Leader>n :NERDTreeToggle<CR>

" Syntax folding for javascript
au FileType javascript setlocal foldmethod=syntax
