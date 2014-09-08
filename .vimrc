set nocompatible               " be iMproved
filetype off                   " required!

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

let $PYTHONPATH = "/System/Library/Frameworks/Python.framework/Versions/2.7/Extras/lib/python/".":".$PYTHONPATH

" let Vundle manage Vundle
" required! 
Bundle 'gmarik/vundle'
Bundle 'Syntastic'
Bundle 'altercation/vim-colors-solarized'
Bundle 'scrooloose/nerdtree'
Bundle 'jistr/vim-nerdtree-tabs'
Bundle 'kien/ctrlp.vim'
Bundle 'SuperTab' 
Bundle 'Lokaltog/vim-powerline'
Bundle 'vim-scripts/ucompleteme'
Bundle 'kchmck/vim-coffee-script'
Bundle 'tsaleh/vim-matchit'
Bundle 'tpope/vim-fugitive'
Bundle 'mileszs/ack.vim'

filetype plugin indent on     " required!
syntax enable

nnoremap <F9> :NERDTreeTabsToggle<CR>
inoremap <F9> <Esc><F9>i
set number
set hlsearch
set incsearch
set ignorecase
set smartcase

" Indentation preferences
set tabstop=2
set softtabstop=2
set shiftwidth=2
set expandtab
set smarttab

noremap <Tab> <C-w><C-w>

if has("gui_running") 
  colorscheme solarized
  set guifont=Inconsolata:h18
endif

set nrformats-=octal

let @r='"wyitk"eyitjcit=w-ek'
