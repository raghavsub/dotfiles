" basic settings
filetype plugin indent on
syntax enable
set autoindent
set backspace=indent,eol,start
set hidden
set laststatus=2
set number
set ruler
set wildmenu

" better search
set hlsearch
set incsearch
set ignorecase
set smartcase
nnoremap <silent> <C-l> :nohlsearch<CR><C-l>

" pollution
set nobackup
set noswapfile

" netrw
let g:netrw_banner = 0

" ctags
set tags+=.git/tags;

" ag
if executable('ag')
    set grepprg=ag\ --vimgrep\ $*
    set grepformat=%f:%l:%c:%m
endif

" apprentice
silent! colorscheme apprentice
