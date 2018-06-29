" Raghav Subramaniam
" .vimrc

filetype plugin indent on
syntax enable
colorscheme apprentice

" SETTINGS

" basics
set autoindent
set backspace=2
set complete-=i
set hidden
set nrformats-=octal
set number
set wildmenu

" better search
set hlsearch
set incsearch
set ignorecase
set smartcase
set history=200

" custom statusline
set noruler
set laststatus=2
set statusline=%m\ %f%=buf:%-3ncol:%-3c%y

" no backup/swap files
set nobackup
set noswapfile

" PLUGINS

" plugin management
packadd minpac
call minpac#init()
call minpac#add('k-takata/minpac', {'type': 'opt'})

" colorscheme
call minpac#add('romainl/apprentice')

" tpope magic
call minpac#add('tpope/vim-unimpaired')
call minpac#add('tpope/vim-commentary')
call minpac#add('tpope/vim-surround')
call minpac#add('tpope/vim-repeat')

" better :nohl
call minpac#add('romainl/vim-cool')

" ag
call minpac#add('mileszs/ack.vim')
let g:ackprg = 'ag --nogroup --nocolor --column'

" git
call minpac#add('tpope/vim-fugitive')
call minpac#add('mhinz/vim-signify')
let g:signify_vcs_list = ['git']
