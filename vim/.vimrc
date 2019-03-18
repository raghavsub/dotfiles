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

" navigation
nnoremap ,f :find *
nnoremap ,b :buffer *
nnoremap ,j :tjump /

" unimpaired-style mappings
nnoremap <silent> [b :bprevious<CR>
nnoremap <silent> ]b :bnext<CR>
nnoremap <silent> [q :cprevious<CR>
nnoremap <silent> ]q :cnext<CR>

" clear search highlighting
nnoremap <silent> ,/ :nohlsearch<CR>

" VARIABLES

" netrw
let g:netrw_banner = 0

" ultisnips
let g:UltiSnipsJumpForwardTrigger = "<Tab>"
let g:UltiSnipsJumpBackwardTrigger = "<S-Tab>"
