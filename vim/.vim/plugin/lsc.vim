let g:lsc_auto_map = v:true
let g:lsc_server_commands = {}

if executable('pylsp')
    let g:lsc_server_commands.python = {
        \ 'command': 'pylsp',
        \ 'workspace_config': {'pylsp': {'plugins': {'pycodestyle': {
            \ 'maxLineLength': 100,
            \ 'ignore': ['E111', 'E114', 'W503', 'W504', 'W505']
        \ }}}}
    \ }
endif
