colorscheme reclipse

call plug#begin()

Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes' 

call plug#end()

set backspace=indent,eol,start

set conceallevel=2

set hidden
set history=50
set incsearch
set number
set ruler "Cursor position
set smartcase
set tabstop=2
set wrap
set noshowmode
set noesckeys
set ttimeout
set ttimeoutlen=100
set nocompatible

"stupid indentation issues

autocmd Filetype plaintex,tex,context setlocal indentexpr=

" vim-airline

let g:airline_theme = 'wombat'

filetype on
filetype plugin on

au BufRead,BufNewFile *.cpe setfiletype cpe
autocmd BufNewFile,BufRead *.tex syntax spell toplevel
au BufRead,BufNewFile *.tsqx setfiletype tsqx

map <c-v> "+p
map <c-c> "+y

let maplocalleader = "-"
