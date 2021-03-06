filetype plugin indent on
syntax on
silent! colorscheme apprentice

" OPTIONS

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

" ctags in git repos
set tags^=.git/tags;

" swapfile management
set directory=~/.tmp//,.

" ag
if executable("ag")
    set grepprg=ag\ --vimgrep\ $*
    set grepformat=%f:%l:%c:%m
endif

" MAPPINGS

" symbol-based navigation
nnoremap ,f :find *
nnoremap ,b :buffer *
nnoremap ,j :tjump /

" list navigation (normie keyboard)
nnoremap <silent> [b :bprevious<CR>
nnoremap <silent> ]b :bnext<CR>
nnoremap <silent> [c :cprevious<CR>
nnoremap <silent> ]c :cnext<CR>

" list navigation (ergo keyboard)
nnoremap <silent> <PageUp> :bprevious<CR>
nnoremap <silent> <PageDown> :bnext<CR>
nnoremap <silent> <End> :cnext<CR>
nnoremap <silent> <Home> :cprevious<CR>

" edit alternate file
nnoremap ,, <C-^>

" clear search highlighting
nnoremap <silent> <C-L> :nohlsearch<CR><C-L>

" VARIABLES

" netrw
let g:netrw_banner = 0
