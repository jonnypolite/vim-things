execute pathogen#infect()

" Here's a .vimrc guide that I like: https://dougblack.io/words/a-good-vimrc.html

syntax enable

" Default tab settings
set tabstop=2
set softtabstop=2 " number of spaces inserted on <tab> and removed on backspace
set shiftwidth=2 " Used for auto indent and >> and whatnot
set expandtab " tabs are spaces

" Four space tab settings
autocmd Filetype javascript setlocal expandtab tabstop=4 shiftwidth=4 softtabstop=4
autocmd Filetype json setlocal expandtab tabstop=4 shiftwidth=4 softtabstop=4
autocmd Filetype python setlocal expandtab tabstop=4 shiftwidth=4 softtabstop=4

set number
set cursorline
filetype indent on " load filetype-specific indent files
set wildmenu " visual tab complete for command menu
set showmatch " highlight matching [{()}]

" Start scrolling x lines away from the edge
set scrolloff=20

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

" Buffer Explorer
" autocmd vimenter * MBEOpen

" NERDTree configs
" autocmd vimenter * NERDTreeVCS
map <C-n> :NERDTreeVCS<CR>
map <C-c> :NERDTreeClose<CR>

autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
