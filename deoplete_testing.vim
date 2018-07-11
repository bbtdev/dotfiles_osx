call plug#begin('~/.vim/plugged')

Plug 'autozimu/LanguageClient-neovim', {
    \ 'branch': 'next',
    \ 'do': 'bash install.sh',
    \ }

Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }

call plug#end()


filetype plugin on " enable file type specific plugins

let g:LanguageClient_autoStart = 1
let g:LanguageClient_autoStop = 0
" -- server --
let g:LanguageClient_serverCommands = {
    \ 'ruby': ['tcp://localhost:7658'] 
    \ }

let g:deoplete#enable_at_startup = 1
let g:deoplete#omni#input_patterns = {}
        let g:deoplete#omni#input_patterns.ruby =
        \ ['[^. *\t]\.\w*', '[a-zA-Z_]\w*::']

autocmd FileType ruby setlocal omnifunc=LanguageClient#complete
inoremap <expr><tab> pumvisible() ? "\<c-n>" : "\<tab>"
