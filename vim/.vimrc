" Raghav Subramaniam
" .vimrc

filetype plugin indent on
syntax enable
colorscheme apprentice

" basics
set backspace=2
set hidden
set number
set wildmenu

" better search
set hlsearch
set incsearch
set ignorecase
set smartcase
set history=200

" default (python) indentation
set autoindent
set expandtab
set shiftwidth=4
set softtabstop=4

" custom statusline
set noruler
set laststatus=2
set statusline=%m\ %f%=buf:%-3ncol:%-3c%y

" no backup/swap files
set nobackup
set noswapfile

" plugins
packadd minpac
call minpac#init()
call minpac#add('k-takata/minpac', {'type': 'opt'})
call minpac#add('mhinz/vim-signify')
call minpac#add('tpope/vim-commentary')
call minpac#add('tpope/vim-repeat')
call minpac#add('tpope/vim-surround')
call minpac#add('tpope/vim-unimpaired')
call minpac#add('raghavsub/vim-agate')
call minpac#add('romainl/apprentice')
call minpac#add('romainl/vim-cool')

" make netrw prettier
let g:netrw_banner = 0

" make signify faster
let g:signify_vcs_list = ['git']
