" Raghav Subramaniam
" .vimrc

" basic settings
filetype plugin indent on
syntax enable
set autoindent
set backspace=2
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
nnoremap <C-l> :nohlsearch<CR><C-l>

" pollution
set nobackup
set noswapfile

" ag
set grepprg=ag\ --vimgrep\ $*
set grepformat=%f:%l:%c:%m

" apprentice
silent! colorscheme apprentice
