execute pathogen#infect()

" Here's a .vimrc guide that I like: https://dougblack.io/words/a-good-vimrc.html

syntax enable

" Default tab settings
set tabstop=2
set softtabstop=2 " number of spaces inserted on <tab> and removed on backspace
set shiftwidth=2 " Used for auto indent and >> and whatnot
set expandtab " tabs are spaces

" Python tab settings
autocmd Filetype python setlocal expandtab tabstop=4 shiftwidth=4 softtabstop=4

set number
set cursorline
filetype indent on " load filetype-specific indent files
set wildmenu " visual tab complete for command menu
set showmatch " highlight matching [{()}]

" Cursor settings, I don't really know which is for which
let &t_SI.="\e[5 q"
let &t_SR.="\e[4 q"
let &t_EI.="\e[1 q"

" search stuff
set incsearch
set hlsearch

" New lines without insert mode
nmap oo o<ESC>k
nmap OO O<ESC>j

" Put a semicolon at the end of a line
nnoremap ;; A;<ESC>
