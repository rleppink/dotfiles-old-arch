set nocompatible              " be iMproved, required
set rtp+=~/.vim/              " Does not seem to happen automatically in gvim
set dir=~/.vim/swp

syntax enable
set encoding=utf-8
filetype plugin indent on       " load file type plugins + indentation
set number                      " show line numbers

"" Whitespace
set nowrap                      " don't wrap lines
set tabstop=4
set shiftwidth=4
set backspace=indent,eol,start  " backspace through everything in insert mode

"" Searching
set hlsearch                    " highlight matches
set incsearch                   " incremental searching
set ignorecase                  " searches are case insensitive...
set smartcase                   " ... unless they contain at least one capital letter

set scrolloff=10

"" File syntax detection
au BufNewFile,BufRead *.md set filetype=markdown
au BufNewFile,BufRead *.javap setf java-bytecode
au BufNewFile,BufRead *.jasmin setf java-bytecode
au BufNewFile,BufRead *.qss setf css

" Change cursor to caret in insert mode or block caret in normal mode
let &t_SI = "\<Esc>]50;CursorShape=1\x7"
let &t_EI = "\<Esc>]50;CursorShape=0\x7"
