"vundle
set nocompatible              " be iMproved, required
filetype off                  " required

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

Bundle 'w0ng/vim-hybrid'
Bundle 'itchyny/lightline.vim'


filetype plugin indent on     " required

" color scheme
syntax enable
set t_Co=256
set background=dark
let g:hybrid_use_Xresources = 1
colorscheme hybrid

" indents and auto-indent
set smartindent
set tabstop=2
set shiftwidth=2
set softtabstop=2
set expandtab

" 80 char ruler
set colorcolumn=80

" rational vim
set backspace=indent,eol,start
set scrolloff=10
set showmode
set hidden
set encoding=utf-8
set wildmenu
set wildmode=longest:full,full
set visualbell
set ttyfast
set undofile

" mouse
set mouse=a
map <ScrollWheelUp> 3<C-Y>
map <ScrollWheelDown> 3<C-E>

"status line
set laststatus=2

set backup                        " enable backups
set noswapfile                    " it's 2014, Vim.

set undodir=~/.vim/tmp/undo/     " undo files
set backupdir=~/.vim/tmp/backup/ " backups
set directory=~/.vim/tmp/swap/   " swap files

" Make those folders automatically if they don't already exist.
if !isdirectory(expand(&undodir))
   call mkdir(expand(&undodir), "p")
endif
if !isdirectory(expand(&backupdir))
   call mkdir(expand(&backupdir), "p")
endif
if !isdirectory(expand(&directory))
   call mkdir(expand(&directory), "p")
endif

" line numbers
set relativenumber

" toggle relative line numbers
function! NumberToggle()
    if(&relativenumber == 1)
        set norelativenumber
        set number
    else
        set nonumber
        set relativenumber
    endif
endfunc

nnoremap <Leader>l  :call NumberToggle()<cr>

"auto set clipboard
set clipboard=unnamed
