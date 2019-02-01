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
nnoremap <silent> <C-L> :<C-U>nohlsearch<CR><C-L>

" swapfiles
set directory=~/.tmp//

" ctags
set tags+=.git/tags;

" ag
if executable("ag")
  set grepprg=ag\ --vimgrep\ $*
  set grepformat=%f:%l:%c:%m
endif

" netrw
let g:netrw_banner = 0

" unimpaired-style mappings
function! MakeListMap(map, pre)
  execute "nnoremap <silent> [".a:map." :<C-U>".a:pre."previous<CR>"
  execute "nnoremap <silent> ]".a:map." :<C-U>".a:pre."next<CR>"
  execute "nnoremap <silent> [".toupper(a:map)." :<C-U>".a:pre."first<CR>"
  execute "nnoremap <silent> ]".toupper(a:map)." :<C-U>".a:pre."last<CR>"
endfunction

call MakeListMap("a", "")
call MakeListMap("b", "b")
call MakeListMap("l", "l")
call MakeListMap("q", "c")
call MakeListMap("t", "t")

" apprentice
silent! colorscheme apprentice
