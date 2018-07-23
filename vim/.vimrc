" Raghav Subramaniam
" .vimrc

" basic settings
filetype plugin indent on
syntax enable
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
nnoremap <silent> <C-l> :<C-u>nohlsearch<CR><C-l>

" no backup/swap files
set nobackup
set noswapfile

" ag
set grepprg=ag\ --vimgrep\ $*
set grepformat=%f:%l:%c:%m

" minpac
packadd minpac
call minpac#init()
call minpac#add('k-takata/minpac', {'type': 'opt'})

" colorscheme
call minpac#add('romainl/apprentice')
colorscheme apprentice

" plugins
call minpac#add('tommcdo/vim-lion')
call minpac#add('tpope/vim-commentary')
call minpac#add('tpope/vim-repeat')
call minpac#add('tpope/vim-surround')
call minpac#add('tpope/vim-unimpaired')
