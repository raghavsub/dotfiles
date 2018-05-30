" Raghav Subramaniam
" .vimrc

" settings

set hlsearch
set incsearch
set ignorecase
set smartcase
set autoindent
set expandtab
set shiftwidth=4
set softtabstop=4
set autoread
set backspace=2
set hidden
set laststatus=2
set number
set wildmenu
set nobackup
set noerrorbells
set noswapfile
set notitle

set statusline=%m\ %f%=buf:%-3ncol:%-3c%y

set tags=tags;

set grepprg=ag\ --vimgrep\ $*
set grepformat=%f:%l:%c:%m

" vim-plug

call plug#begin('~/.vim/plugged')

Plug 'romainl/apprentice'

Plug 'mhinz/vim-signify'
Plug 'romainl/vim-cool'
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-repeat'
Plug 'tpope/vim-unimpaired'

call plug#end()

" other

colorscheme apprentice

let g:netrw_banner = 0

let g:signify_vcs_list = ['git']
