filetype plugin indent on
syntax on
silent! colorscheme apprentice

" general
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

" wildignore
set wildignore+=*.pyc

" find path
set path=.,**

" swapfile management
set directory=~/.tmp//,.

" ag
if executable('ag')
    set grepprg=ag\ --vimgrep\ $*
    set grepformat=%f:%l:%c:%m
endif

" symbol-based navigation
nnoremap ,f :find *
nnoremap ,b :buffer *

" list navigation
nnoremap <silent> [b :bprevious<CR>
nnoremap <silent> ]b :bnext<CR>
nnoremap <silent> [c :cprevious<CR>
nnoremap <silent> ]c :cnext<CR>

" edit alternate file
nnoremap ,, <C-^>

" clear search highlighting
nnoremap <silent> <C-L> :nohlsearch<CR><C-L>
