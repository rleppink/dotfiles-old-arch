set nocompatible              " be iMproved
set rtp+=~/.vim/              " Does not seem to happen automatically in gvim
set dir=~/.vim/swp


"" Plug: Plugin manager
call plug#begin('~/.vim/plugged')

" General plugins
Plug 'ctrlpvim/ctrlp.vim'

" Language specific plugins
Plug 'neapel/vim-java-bytecode'
Plug 'neovimhaskell/haskell-vim'
Plug 'rhysd/vim-clang-format'

call plug#end()


"" Basic settings
syntax enable
set encoding=utf-8
filetype off
filetype plugin indent on       " load file type plugins + indentation
set number                      " show line numbers
autocmd FileType c,cc,cpp,h ClangFormatAutoEnable

"" Statusline
set laststatus=2
set statusline+=%F
set statusline+=%=%-4.l


"" Whitespace
set nowrap                      " don't wrap lines
set tabstop=4
set shiftwidth=4
set expandtab                   " spaces instead of tabs
set backspace=indent,eol,start  " backspace through everything in insert mode


"" Searching
set hlsearch                    " highlight matches
set incsearch                   " incremental searching
set ignorecase                  " searches are case insensitive...
set smartcase                   " ... unless they contain at least one capital letter


"" Cursor
set scrolloff=10
set colorcolumn=100


"" Change cursor to caret in insert mode or block caret in normal mode
"let &t_SI = "\<Esc>]50;CursorShape=1\x7"
"let &t_EI = "\<Esc>]50;CursorShape=0\x7"
let &t_SI = "\e[6 q"
let &t_EI = "\e[2 q"


"" File syntax detection
au BufNewFile,BufRead *.md set filetype=markdown
au BufNewFile,BufRead *.javap setf java-bytecode
au BufNewFile,BufRead *.jasmin setf java-bytecode
au BufNewFile,BufRead *.qss setf css


"" Tab completion in menus
set completeopt=menuone,menu,longest
set wildignore+=*\\tmp\\*,*.swp,*.swo,*.zip,.git,.cabal-sandbox
set wildmode=longest,list,full
set wildmenu
set completeopt+=longest


"" Whitespace / invisible characters
set listchars=eol:\ ,tab:\⇀\ ,trail:~,extends:>,precedes:<
set list


"" gvim
set guifont="DejaVu Sans Mono":h9:cANSI
set guioptions-=T            " Remove toolbar
set guioptions-=m            " Remove menu
set guioptions-=r            " Remove right scrollbar
set guioptions-=L            " Remove left scrollbar
"set lines=40 columns=110 linespace=0
set vb                       " visual bell
set t_vb=""                  " no beeping
set mousemodel=popup_setpos

" let g:ycm_global_ycm_extra_conf = '/usr/share/vim/vimfiles/third_party/ycmd/cpp/ycm/.ycm_extra_conf.py'

set cursorline
hi CursorLine term=reverse ctermbg=231 guibg=LightRed cterm=none

"" Windows specific settings & overrides
if has("win32")
    set guifont=DejaVu_Sans_Mono:h9:cANSI
    set lines=74 columns=180 linespace=0
    set cursorline

    "" Colors
    colorscheme base16-chalk
    set background=light
endif
