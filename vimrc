" Raghav Subramaniam
" .vimrc

" vim-plug
call plug#begin('~/.vim/plugged')

" core
Plug 'junegunn/seoul256.vim'
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-surround'
Plug 'wincent/command-t'

" other
Plug 'christoomey/vim-tmux-navigator'
Plug 'julialang/julia-vim'

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
set laststatus=2
set nobackup
set noswapfile
set noerrorbells
set clipboard=unnamed

" colors
colorscheme seoul256

" avoid escape
inoremap jj <ESC>

" leader
let mapleader=","

" fast buffer toggle
nnoremap <silent> <leader><leader> :e#<CR>

" clear searches
nnoremap <silent> <leader>/ :nohlsearch<CR>

" reload command-t
nnoremap <silent> <leader>r :CommandTFlush<CR>

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

" custom status line
set statusline=
set statusline+=%m\ %f
set statusline+=%<
set statusline+=%=
set statusline+=buf:%-3n
set statusline+=col:%-3.c
set statusline+=%y
