" Raghav Subramaniam
".vimrc

" vim-plug
call plug#begin('~/.vim/plugged')

Plug 'altercation/vim-colors-solarized'
Plug 'christoomey/vim-tmux-navigator'
Plug 'ervandew/supertab'
Plug 'wincent/command-t'

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
set clipboard=unnamed

" colors
colo solarized
set background=dark

" leader
let mapleader=","

" avoid escape
inoremap jj <ESC>

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

" markdown
au BufNewFile,BufRead *.txt set filetype=markdown

" arrow keys
noremap <left> <nop>
noremap <right> <nop>
noremap <up> <nop>
noremap <down> <nop>
inoremap <left> <nop>
inoremap <right> <nop>
inoremap <up> <nop>
inoremap <down> <nop>
