colorscheme slate

call plug#begin()

Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'sirver/ultisnips'

call plug#end()

set backspace=indent,eol,start
set hidden
set history=50
set incsearch
set number
set ruler "Cursor position
set smartcase
set wrap
set noshowmode
set noesckeys
set nocompatible
set noshowmode
set foldmethod=manual

"{{{ Custom keybindings

let mapleader = ","
let maplocalleader = "-"

noremap <c-v> "+p
noremap <c-c> "+y
inoremap <c-v> <Esc>"+pi
inoremap <c-c> <Esc>"+yi
nnoremap <Leader>d :.!date +"\%B \%d, \%Y"<CR>
inoremap <Leader>d <Esc>:.!date "\%B \%d, \%Y"<CR>

"}}}

"{{{ Indentation

set tabstop=2
set expandtab
set softtabstop=2
set shiftwidth=2

"stupid indentation issues

autocmd Filetype plaintex,tex,context setlocal indentexpr=

"}}}

"{{{ vim-airline
let g:airline_theme = 'wombat'
let g:airline_powerline_fonts = 0
let g:airline#extensions#whitespace#enabled = 0

if !exists('g:airline_symbols')
  let g:airline_symbols = {}
endif

" unicode symbols
let g:airline_left_sep = ''
let g:airline_left_sep_alt = ''
let g:airline_right_sep = ''
let g:airline_right_sep_alt = ''
let g:airline_symbols.colnr = ' ㏇:'
let g:airline_symbols.crypt = '🔒'
let g:airline_symbols.linenr = ' '
let g:airline_right_sep = ''
let g:airline_left_sep= ''
let g:airline_symbols.linenr = " ㏑:"
let g:airline_symbols.maxlinenr = ''
let g:airline_symbols.branch = '⎇'
let g:airline_symbols.paste = 'ρ'
let g:airline_symbols.spell = 'Ꞩ'
let g:airline_symbols.notexists = 'Ɇ'
let g:airline_symbols.notexists = '∄'
let g:airline_symbols.whitespace = 'Ξ'

"}}}

"{{{ Ultisnips

let g:UltiSnipsExpandTrigger = '<tab>'
let g:UltiSnipsJumpForwardTrigger = '<tab>'
let g:UltiSnipsJumpBackwardTrigger = '<s-tab>'

let g:UltiSnipsSnippetDirectories = ["UltiSnips"]

let g:UltiSnipsSnippetDir = "UltiSnips"

"}}}


"{{{ Random

filetype on
filetype plugin on

au BufRead,BufNewFile *.cpl setfiletype cpl
autocmd BufNewFile,BufRead *.tex setfiletype tex
autocmd BufNewFile,BufRead *.tex syntax spell toplevel
au BufRead,BufNewFile *.tsqx setfiletype tsqx
let g:tex_flavor = "latex"

set backupdir=~/.vim/tmp
set directory=~/.vim/tmp

set backup

"}}}
