" Raghav Subramaniam
" .vimrc

" vim-plug
call plug#begin('~/.vim/plugged')

Plug 'chriskempson/base16-vim'
Plug 'junegunn/fzf', { 'dir' : '~/.fzf', 'do': './install --all' }
Plug 'raghavsub/vim-agate'
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-repeat'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-unimpaired'

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

" colors
let base16colorspace=256
colorscheme base16-default-dark

" avoid escape
imap jj <ESC>

" leader
let mapleader=","

" fast buffer toggle
nmap <leader><leader> :e#<CR>

" clear searches
nmap <leader>/ :nohlsearch<CR>

" FZF
nmap <leader>t :FZF<CR>

" ctags
set tags=tags;

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
