" Raghav Subramaniam
".vimrc

" vim-plug
call plug#begin('~/.vim/plugged')

Plug 'christoomey/vim-tmux-navigator'
Plug 'ervandew/supertab'
Plug 'junegunn/seoul256.vim'
Plug 'wincent/command-t'

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

" colors
colo seoul256

" avoid escape
inoremap jj <ESC>

" leader
let mapleader=","

" file toggle
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
set statusline+=%m\ %F
set statusline+=%<
set statusline+=%=
set statusline+=buf:%-3n
set statusline+=col:%-3.c
set statusline+=%y

" filetypes
au BufNewFile,BufRead *.txt set filetype=markdown

" no arrow keys
noremap <left> <nop>
noremap <right> <nop>
noremap <up> <nop>
noremap <down> <nop>
inoremap <left> <nop>
inoremap <right> <nop>
inoremap <up> <nop>
inoremap <down> <nop>

" custom status line
set statusline=
set statusline+=%m\ %F
set statusline+=%<
set statusline+=%=
set statusline+=buf:%-3n
set statusline+=col:%-3.c
set statusline+=%y

" guioptions
set guioptions-=r
set guifont=Fira\ Mono:h13
