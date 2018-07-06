" *********************
" * INSTALLED PLUGINS *
" *********************
"
call plug#begin('~/.vim/plugged')

" * Language support *
" ====================
" -- language pack --
Plug 'sheerun/vim-polyglot'
" -- ruby, rails --
Plug 'vim-ruby/vim-ruby'
Plug 'tpope/vim-rails'
" -- elixir --
Plug 'elixir-editors/vim-elixir'
Plug 'slashmili/alchemist.vim'

" * Async *
" =========
" -- lint --
Plug 'w0rp/ale'
" -- lsp --
Plug 'autozimu/LanguageClient-neovim', {
    \ 'branch': 'next',
    \ 'do': 'bash install.sh',
    \ }
" -- automcomplete --
Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }

" * Functionalities *
" ========
" -- git integration
Plug 'tpope/vim-fugitive'
" -- persistent sessions --
Plug 'tpope/vim-obsession'
" -- explorer --
Plug 'scrooloose/nerdtree'
Plug '/usr/local/opt/fzf'
Plug 'junegunn/fzf.vim'
Plug 'pbogut/fzf-mru.vim' " Most Recently Used functionality from CtrlP plugin
" -- autocomplete --
Plug 'tpope/vim-endwise' " end of function
Plug 'Raimondi/delimitMate' " end of delimeters
" -- tmux --
Plug 'christoomey/vim-tmux-navigator'
" -- misc --
" Plug 'tpope/vim-repeat' " extends repeat functionality
Plug 'troydm/zoomwintab.vim' " zoom buffer
Plug 'tpope/vim-surround' " extends change functionality
Plug 'junegunn/goyo.vim' " reader mode
" -- themes --
Plug 'rafi/awesome-vim-colorschemes'
Plug 'arcticicestudio/nord-vim'

" * TESTING *
" ===========


call plug#end()

" ***********
" * GENERAL *
" ***********
filetype plugin on " enable file type specific plugins

" -- tabs spaces --
set tabstop=2       " number of visual spaces per TAB
set softtabstop=2   " number of spaces in tab when editing
set shiftwidth=2    " number of spaces to use for autoindent
set expandtab       " tabs are space

" PROBLEMS
" problems in tmux
" set termguicolors

" -- comments --
"  --- no tab continuation
autocmd FileType * setlocal formatoptions-=c formatoptions-=r formatoptions-=o

" -- theme --
colorscheme nord

" ***********
" * TESTING *
" ***********
" Trigger configuration. Do not use <tab> if you use https://github.com/Valloric/YouCompleteMe.
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<c-b>"
let g:UltiSnipsJumpBackwardTrigger="<c-z>"

" ***********
" * PLUGINS *
" ***********
"
" * ale *
" =======
let g:ale_open_list = 0
"
" * LSP *
" =======
" - start -
let g:LanguageClient_autoStart = 1
let g:LanguageClient_autoStop = 0
" -- server --
let g:LanguageClient_serverCommands = {
    \ 'ruby': ['tcp://localhost:7658'] 
    \ }
" -- keys --
nnoremap <F5> :call LanguageClient_contextMenu()<CR>
nnoremap <silent> K :call LanguageClient#textDocument_hover()<CR>
nnoremap <silent> gd :call LanguageClient#textDocument_definition()<CR>
nnoremap <silent> <F2> :call LanguageClient#textDocument_rename()<CR>
" -- notes --
"  + alchemist runs automatically
"  + ruby lsp start: solargraph socket

" * deoplete *
" ============
" -- start --
let g:deoplete#enable_at_startup = 1
" -- language config --
let g:deoplete#omni#input_patterns = {}
        let g:deoplete#omni#input_patterns.ruby =
        \ ['[^. *\t]\.\w*', '[a-zA-Z_]\w*::']

autocmd FileType ruby setlocal omnifunc=LanguageClient#complete
" -- notes --
" + input_patterns explanation: https://github.com/Shougo/deoplete.nvim/issues/175
" + alchemist starts automatically

" * fzf *
" =======
" -- replace built-in functions
:cnoreabbrev ls :Buffers
:cnoreabbrev tags :Tags

" * NerdTree *
" ============
" -- replace built-in functions
:cnoreabbrev Lex :NERDTreeToggle


" ********
" * KEYS *
" ********

" * General *
" ===========

" -- leader --
let mapleader=" "

" -- buffer navigation
nnoremap <leader>l :Buffers<CR>
nnoremap <leader>b :b#<CR>

" -- windows
"  --- move cursor on small splits
nnoremap <C-w>v :vsplit<CR><C-w>p
nnoremap <C-w>s :split<CR><C-w>p
"  --- big splits
nnoremap <C-w>S :botright sp<CR>
nnoremap <C-w>V :botright vsplit<CR>

" * Plugins *
" ===========

" -- fzf --
nnoremap <C-p> :FZF<CR>
"  --- search word under cursor with ag silver searcher
nnoremap <silent> <Leader>k :Ag <C-R><C-W><CR>

" -- fzf-mru --
map <leader>p :FZFMru<cr>

" -- deoplete --
"  --- tab complete
inoremap <expr><tab> pumvisible() ? "\<c-n>" : "\<tab>"
