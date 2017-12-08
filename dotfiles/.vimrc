" Raghav Subramaniam
" .vimrc

" vim-plug
call plug#begin('~/.vim/plugged')

Plug '~/.fzf'
Plug 'raghavsub/vim-agate'
Plug 'raghavsub/vim-legal'
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-repeat'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-unimpaired'

call plug#end()

" general
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

" colors
colorscheme legal

" avoid escape
imap jj <ESC>

" leader
let mapleader=" "

" fast buffer toggle
nmap <leader><leader> :e#<CR>

" clear searches
nmap <leader>/ :nohlsearch<CR>

" FZF
nmap <leader>t :FZF<CR>

" ctags
set tags=tags;
inoremap <c-x><c-]> <c-]>

" jk macros
nnoremap j gj
nnoremap k gk
nnoremap gj j
nnoremap gk k

" custom status line
set statusline=
set statusline+=%m\ %f
set statusline+=%<
set statusline+=%=
set statusline+=buf:%-3n
set statusline+=col:%-3.c
set statusline+=%y
