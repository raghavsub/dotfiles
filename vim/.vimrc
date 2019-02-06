filetype plugin indent on
syntax enable
colorscheme apprentice

" OPTIONS

" basics
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
set directory^=~/.tmp//

" ctags in git repos
set tags^=.git/tags;

" ag
if executable("ag")
  set grepprg=ag\ --vimgrep\ $*
  set grepformat=%f:%l:%c:%m
endif

" VARIABLES

" clean up netrw
let g:netrw_banner = 0

" MAPPINGS

" clear search highlighting
nnoremap <C-L> :nohlsearch<CR><C-L>

" magic buffer navigation
nnoremap gb :ls<CR>:b<Space>

" vim-qf quickfix navigation
nmap [q <Plug>(qf_qf_previous)
nmap ]q <Plug>(qf_qf_next)
