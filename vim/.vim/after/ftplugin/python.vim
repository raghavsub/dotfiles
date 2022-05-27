" color column
setlocal colorcolumn=100

" makeprg
if executable("flake8")
    setlocal makeprg=flake8\ --ignore=E111,E114,W503,W504,W505\ --max-line-length=100\ $*
endif
