filetype plugin indent on
syntax on
silent! colorscheme apprentice

" OPTIONS

" general
set autoindent
set backspace=2
set hidden
set laststatus=2
set number
set ruler

" better search
set hlsearch
set incsearch
set ignorecase
set smartcase

" wildcards
set wildcharm=<C-Z>
set wildmenu

" swapfile management
set directory^=~/.tmp//

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

" buffer navigation
nnoremap ,b :buffer <C-Z><S-Tab>
nnoremap [b :bprevious<CR>
nnoremap ]b :bnext<CR>

" quickfix navigation
nmap [q :qprevious<CR>
nmap ]q :qnext<CR>

" VARIABLES

" netrw
let g:netrw_banner = 0

" ultisnips
let g:UltiSnipsJumpForwardTrigger = "<Tab>"
let g:UltiSnipsJumpBackwardTrigger = "<S-Tab>"
