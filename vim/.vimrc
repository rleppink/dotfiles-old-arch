set nocompatible              " be iMproved, required
set rtp+=~/.vim/              " Does not seem to happen automatically in gvim

" - Vundle
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'

" Vundle plugins
" Plugin 'https://github.com/Valloric/YouCompleteMe'
Plugin 'https://github.com/scrooloose/nerdtree'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'neapel/vim-java-bytecode'
Plugin 'pangloss/vim-javascript'
Plugin 'Slava/vim-spacebars'
Plugin 'ctrlpvim/ctrlp.vim'
" / Vundle plugins

call vundle#end()            " required
filetype plugin indent on    " required
" - /Vundle


syntax enable
set encoding=utf-8
set showcmd                     " display incomplete commands
filetype plugin indent on       " load file type plugins + indentation
set number                      " show line numbers
set guioptions-=L
set clipboard=unnamed
set cursorline

"" Whitespace
set nowrap                      " don't wrap lines
set tabstop=4
set shiftwidth=4
set expandtab                   " use spaces, not tabs (optional)
set backspace=indent,eol,start  " backspace through everything in insert mode

"" Searching
set hlsearch                    " highlight matches
set incsearch                   " incremental searching
set ignorecase                  " searches are case insensitive...
set smartcase                   " ... unless they contain at least one capital letter

set dir=~/.vim/swp
set scrolloff=10

colorscheme base16-monokai
set background=dark
" colorscheme base16-solarized
" set background=light

nnoremap <C-s> :nohl<CR>

" NERDTree
silent! map <C-k> :NERDTreeFind<CR>
let NERDTreeIgnore = ['\.pyc$', '\.o$']

"" Sane tab navigation
nnoremap <C-S-tab> :tabprevious<CR>
nnoremap <C-tab>   :tabnext<CR>
nnoremap <C-t>     :tabnew<CR>
inoremap <C-S-tab> <Esc>:tabprevious<CR>i
inoremap <C-tab>   <Esc>:tabnext<CR>i
inoremap <C-t>     <Esc>:tabnew<CR>

"" File syntax detection
au BufNewFile,BufRead *.md setf markdown
au BufNewFile,BufRead *.javap setf java-bytecode
au BufNewFile,BufRead *.jasmin setf java-bytecode
au BufNewFile,BufRead *.qss setf css

"" vim-airline settings
set laststatus=2
set timeoutlen=50
let g:airline_powerline_fonts = 1


"" autocomplete remove preview window
set completeopt-=preview

" gvim
set guifont=DejaVu_Sans_Mono_for_Powerline:h9:cANSI
set guioptions-=T            " Remove toolbar
set guioptions-=m            " Remove menu
set guioptions-=r            " Remove right scrollbar
set guioptions-=L            " Remove left scrollbar
set vb                       " visual bell
set t_vb=""                  " no beeping
set mousemodel=popup_setpos

" Change cursor to caret in insert mode or block caret in normal mode
let &t_SI = "\<Esc>]50;CursorShape=1\x7"
let &t_EI = "\<Esc>]50;CursorShape=0\x7"

let g:html_indent_inctags = "html,body,head,tbody,template"
