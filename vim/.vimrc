" Raghav Subramaniam
" .vimrc

filetype plugin indent on
syntax enable
colorscheme apprentice

" settings
set hlsearch
set incsearch
set ignorecase
set smartcase
set autoindent
set expandtab
set shiftwidth=4
set softtabstop=4
set backspace=2
set hidden
set laststatus=2
set number
set wildmenu
set nobackup
set noswapfile
set statusline=%m\ %f%=buf:%-3ncol:%-3c%y

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

" misc
let g:netrw_banner = 0
let g:signify_vcs_list = ['git']
