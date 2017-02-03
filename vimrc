" Raghav Subramaniam
" .vimrc

" vim-plug
call plug#begin('~/.vim/plugged')

Plug 'christoomey/vim-tmux-navigator'
Plug 'noahfrederick/vim-noctu'
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-surround'

Plug 'junegunn/fzf', { 'dir' : '~/.fzf', 'do': './install --all' }

call plug#end()

" general
filetype plugin indent on
syntax on
set nocompatible
set hidden
set notitle
set hlsearch
set incsearch
set ignorecase
set smartcase
set number
set backspace=indent,eol,start
set autoindent
set tabstop=4
set shiftwidth=4
set softtabstop=4
set expandtab
set laststatus=2
set nobackup
set noswapfile
set noerrorbells
set clipboard=unnamed

" colors
colo noctu

" avoid escape
inoremap jj <ESC>

" leader
let mapleader=","

" fast buffer toggle
nnoremap <silent> <leader><leader> :e#<CR>

" clear searches
nnoremap <silent> <leader>/ :nohlsearch<CR>

" command-t functionality
nnoremap <silent> <leader>t :FZF<CR>

" wrapping
nnoremap j gj
nnoremap k gk
vnoremap j gj
vnoremap k gk

" splits
set splitbelow
set splitright
nnoremap <c-j> <c-w>j
nnoremap <c-k> <c-w>k
nnoremap <c-h> <c-w>h
nnoremap <c-l> <c-w>l

" custom status line
set statusline=
set statusline+=%m\ %f
set statusline+=%<
set statusline+=%=
set statusline+=buf:%-3n
set statusline+=col:%-3.c
set statusline+=%y
