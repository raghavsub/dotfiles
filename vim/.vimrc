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

" swapfile management
set directory=~/.tmp//,.

" find path
set path=.,**

" ctags in git repos
set tags^=.git/tags;

" ag
if executable("ag")
  set grepprg=ag\ --vimgrep\ $*
  set grepformat=%f:%l:%c:%m
endif

" MAPPINGS

" clear search highlighting
nnoremap <C-L> :nohlsearch<CR><C-L>

" navigation
nnoremap ,f :find *
nnoremap ,b :buffer *
nnoremap ,j :tjump /

" unimpaired-style mappings
nnoremap [b :bprevious<CR>
nnoremap ]b :bnext<CR>
nnoremap [q :cprevious<CR>
nnoremap ]q :cnext<CR>

" VARIABLES

" netrw
let g:netrw_banner = 0

" ultisnips
let g:UltiSnipsJumpForwardTrigger = "<Tab>"
let g:UltiSnipsJumpBackwardTrigger = "<S-Tab>"
