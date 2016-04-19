" Raghav Subramaniam
".vimrc

" vim-plug
call plug#begin('~/.vim/plugged')

Plug 'christoomey/vim-tmux-navigator'   " tmux
Plug 'ervandew/supertab'                " completion
Plug 'itchyny/lightline.vim'            " line
Plug 'junegunn/seoul256.vim'            " color
Plug 'wincent/command-t'                " fuzzy

call plug#end()

" general
filetype plugin indent on
syntax on

set nocompatible
set hidden
set notitle
set hlsearch
set incsearch
set number
set ignorecase
set smartcase
set backspace=indent,eol,start
set autoindent
set smartindent
set shiftwidth=4
set tabstop=4
set expandtab
set showmatch
set laststatus=2
set nobackup
set noswapfile
set clipboard=unnamed

" colors
colo seoul256
set background=dark

" leader
let mapleader=","

" avoid escape
inoremap jj <ESC>

" vimrc access
nnoremap <silent> <leader>e :e $MYVIMRC<CR>
nnoremap <silent> <leader>s :so $MYVIMRC<CR>

" file toggle
nnoremap <silent> <leader><leader> :e#<CR>

" wrapping
nnoremap j gj
nnoremap k gk

" splits
set splitbelow
set splitright
nnoremap <c-j> <c-w>j
nnoremap <c-k> <c-w>k
nnoremap <c-h> <c-w>h
nnoremap <c-l> <c-w>l

" clear searches
nnoremap <silent> <leader>/ :nohlsearch<CR>

" command-t
nnoremap <silent> <leader>r :CommandTFlush<CR>

" lightline
let g:lightline = {'colorscheme': 'seoul256',}

" arrow keys
noremap <left> <nop>
noremap <right> <nop>
noremap <up> <nop>
noremap <down> <nop>
inoremap <left> <nop>
inoremap <right> <nop>
inoremap <up> <nop>
inoremap <down> <nop>
