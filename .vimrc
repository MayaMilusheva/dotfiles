set nocompatible               " be iMproved
filetype off                   " required!

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

let $PYTHONPATH = "/System/Library/Frameworks/Python.framework/Versions/2.7/Extras/lib/python/".":".$PYTHONPATH

" let Vundle manage Vundle
" required! 

Bundle 'Lokaltog/vim-powerline'
Bundle 'SuperTab' 
Bundle 'airblade/vim-gitgutter'
Bundle 'jwhitley/vim-colors-solarized'
Bundle 'bling/vim-airline'
Bundle 'gmarik/vundle'
Bundle 'jistr/vim-nerdtree-tabs'
Bundle 'kchmck/vim-coffee-script'
Bundle 'kien/ctrlp.vim'
Bundle 'mhinz/vim-startify'
Bundle 'mileszs/ack.vim'
Bundle 'scrooloose/nerdtree'
Bundle 'scrooloose/syntastic'
Bundle 'sheerun/vim-polyglot'
Bundle 'tpope/vim-fugitive'
Bundle 'tpope/vim-repeat'
Bundle 'tpope/vim-sensible'
Bundle 'tpope/vim-surround'
Bundle 'vim-scripts/a.vim'
Bundle 'vim-scripts/ucompleteme'
Bundle 'rking/ag.vim'
Bundle 'OmniSharp/omnisharp-vim'
Bundle 'tpope/vim-dispatch'

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

colorscheme solarized
let g:nerdtree_tabs_open_on_console_startup=1

noremap <Tab> <C-w><C-w>

if has("gui_running") 
  colorscheme solarized
  set guifont=Inconsolata:h18
endif

set nrformats-=octal

let g:airline#extensions#tabline#enabled = 1
let g:airline_powerline_fonts = 1
set laststatus=2


