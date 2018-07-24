" Raghav Subramaniam
" .vimrc
"
filetype plugin indent on
syntax enable
colorscheme apprentice

" basic settings
set autoindent
set backspace=2
set complete-=i
set hidden
set laststatus=2
set nrformats-=octal
set number
set ruler
set wildmenu

" better search
set hlsearch
set incsearch
set ignorecase
set smartcase
set history=200

" no backup/swap files
set nobackup
set noswapfile

" ag
set grepprg=ag\ --vimgrep\ $*
set grepformat=%f:%l:%c:%m

" plugins
packadd minpac
call minpac#init()
call minpac#add('k-takata/minpac', {'type': 'opt'})
call minpac#add('romainl/apprentice')
call minpac#add('romainl/vim-cool')
call minpac#add('tommcdo/vim-lion')
call minpac#add('tpope/vim-commentary')
call minpac#add('tpope/vim-fugitive')
call minpac#add('tpope/vim-repeat')
call minpac#add('tpope/vim-surround')
call minpac#add('tpope/vim-unimpaired')
