" TODO " check 'set clipboard'; bind D-c D-v D-x based on mode "
" - " check 'set paste' "
" - " create linters "
" - " create session management "
" - " custom welcome message "
" - " replace grep "
" - " implement project folder functionality "
" - " set autowrite? "
" - " set autoread? "
" - " matching brackets etc "
" - " auto add end "
" - " show register when pasting functionality "
" - " fix <Esc> when pumvisible. Map to C-y<Esc>? "
" - " learn what <exp> does "
" - " <Leader>f and implement the rest of FZF commands "
" - " better clipboard setup "
" - " check when dirvish introduces tree. Copy functionality from Nerdtree "

" Rules:
" taken from vimrc review threads
" checklist: https://www.reddit.com/r/vim/wiki/vimrctips
" - " don't change tabstop https://www.reddit.com/r/vim/wiki/tabstop "
" - " 'clipboard^=' instead of '=', is more portable "
" - " don't use smartindent "
" - " 'filetype plugin indent on' - has to be set after loading plugins "
" - " wrap your autocmds in proper self-clearing augroups "
" - " 'set nocompatible' is usefull only when '-u', to avoid this use '-Nu' "
" - " be specific in your mappings. nmap vs map "
" - " avoid recursive mappings. nmap vs nnoremap "
" - " don't 'set t_Co=256'; set up your terminal properly instead "
" - " in scripts 'normal' should always be used as 'normal!' "
" - " allow your functions to abort "
" - " do not use 'source', use 'runtime' "
" - " use long names to help readability: 'highlight' vs 'hi' "
" - " 'set background' should be set by your colorscheme "
" - " moving your custom functions to 'autoload/' "
" - " move filetype-specific settings to 'after/ftplugin/' "
" - " /\v breaks some plugins "
" - " 'cursorline' and 'cursorcolumn' are documented as slow "
" - " '~/.vim/' and '$HOME/.vim/' are not portable "
" - " 'vnoremap' covers visual and select, for visual use 'xnoremap' "

" Content:
" ===============================================================================
" " Plugins "
" ===============================================================================
" " Settings "
" ------------------------------------------------------------------------------
" " - Nvim Defaults "
" " - General "
" " - Autogroup "
" ===============================================================================
" " Mappings "
" ------------------------------------------------------------------------------
" " - Catalog "
" " - Extended "
" ===============================================================================
" " Testing "
" ------------------------------------------------------------------------------
" " - Plugin Settings "
" " - General Settings "
" " - Functions "
" " - Mappings "
" ===============================================================================


" ==============================================================================
" Plugins: {{{ 
" ==============================================================================
set runtimepath+=/Users/bogdan/.cache/dein/repos/github.com/Shougo/dein.vim

if dein#load_state('/Users/bogdan/.cache/dein')
  call dein#begin('/Users/bogdan/.cache/dein')
  call dein#add('~/.cache/dein/repos/github.com/Shougo/dein.vim')

  " Languages_Support:
  " ============================================================================
  call dein#add('https://github.com/sheerun/vim-polyglot')

  " Themes:
  " ============================================================================
  call dein#add('tomasr/molokai')
  call dein#add('altercation/vim-colors-solarized')

  " Linting:
  " ============================================================================
  " call dein#add('neomake/neomake')
  " * elixir: it does not have dialyzer built-in, but i can be setup
  " ----------------------------------------------------------------------------
  call dein#add('w0rp/ale')
  " * elixir: does not do syntax checking in elixir

  " Language_Server_Protocol:
  " ============================================================================
  call dein#add('autozimu/LanguageClient-neovim', {
       \ 'rev':'next',
       \ 'build': 'bash install.sh',
       \ })

  " Searching:
  " =============================================================================

  " Autocomplete:
  " ============================================================================
  call dein#add('Shougo/deoplete.nvim')
  " deoplete sources
  call dein#add('Shougo/neco-vim')


  " Snippets:
  " ============================================================================
  " necessary for deoplete elixir-ls snippets completion
  call dein#add('SirVer/ultisnips')

  " Testing:
  " ============================================================================
  call dein#add('tpope/vim-surround')
  call dein#add('wikitopian/hardmode')
  call dein#add('qstrahl/vim-dentures')
  call dein#add('tpope/vim-endwise')
  " file exploration
  call dein#add('scrooloose/nerdtree')
  call dein#add('jeetsukumaran/vim-filebeagle')
  " fuzzy
  call dein#add('/usr/local/opt/fzf')
  call dein#add('junegunn/fzf.vim')

  call dein#end()
  call dein#save_state()
endif

" If you want to install not installed plugins on startup.
if dein#check_install()
  call dein#install()
endif
" ==============================================================================
" Plugins }}}
" ==============================================================================

" ==============================================================================
" Settings: {{{
" ==============================================================================

" ------------------------------------------------------------------------------
" Settings " Nvim Defaults: {{{
" ------------------------------------------------------------------------------

" Defaults that require study
" ~ fillchars
" ~ fsync
" ~ langremap
" ~ langnoremap
" ! listchars
" ! nrformats
" ! ruler
" ! viminfo

" filetype plugin indent on
"" filetype specifics
"" 'on'         - enable filetype detection
"" 'plugin on'  - enable plugin files for specific filetypes
"" 'indent on'  - enable loading indent file for specific filetypes

"syntax on
"" syntax highlighting

"set autoindent
"" continue indent from previous line

"set autoread
"" load external changes to file

"set backspace=indent,eol,start
"" backspace behaviour in 'Insert mode'
"" - indent	allow backspacing over autoindent
"" - eol	allow backspacing over line breaks (join lines)
"" - start	allow backspacing over the start of insert

"set belloff=all
"" disable bell

"set complete-=i
"" removes include files scanning for autocompletion

"set cscopeverbose
"" print messages regarding cscope database connection

"" swap files directory
"" '//' - store files using full path
"set directory=~/.local/share/nvim/swap//
"set backupdir=,~/.local/share/nvim/backup (|xdg|)
"set undodir=~/.local/share/nvim/undo

"set history=1000
"" command-lines history

"set hlsearch
"" highlight previous search pattern
"set incsearch
"" highlight search pattern while typing

"set laststatus=2
"" always show status line

"set sessionoptions-=options
"" options for vim sessions
"" 'options' - options and mappings

"set showcmd
"" show (partial) command

"set tabpagemax=50
"" maximum number of tabs to be open on -p or :tab all

"set ttyfast
"" fast terminal connection

"set wildmenu
"" enhanced wildmenu completion

" ------------------------------------------------------------------------------
" Settings " Nvim Defaults }}}
" ------------------------------------------------------------------------------

" ------------------------------------------------------------------------------
" Settings " Theme: {{{
" ------------------------------------------------------------------------------

" https://gist.github.com/romainl/379904f91fa40533175dfaec4c833f2f
augroup Theming
  autocmd!
  " hlsearch colors
  autocmd ColorScheme * highlight Search ctermbg=LightGray
  autocmd ColorScheme * highlight Search ctermfg=Black
augroup END

" molokai solarized
colorscheme molokai
" ------------------------------------------------------------------------------
" Settings " Theme }}}
" ------------------------------------------------------------------------------

" ------------------------------------------------------------------------------
" Settings " General: {{{
" ------------------------------------------------------------------------------

" persistent undo
set undofile

" Searching
set ignorecase " ignore case
set smartcase  " ignore case unless capital letters

" also use system register
set clipboard^=unnamed

" set omni completion
set omnifunc=syntaxcomplete#Complete

" switch between buffers without saving
set hidden

" set path to current directory and all directories under it
set path=$PWD/**

" tab
" number of spaces for Tab when editing
set softtabstop=2
" number of spaces to use for (auto)ident
set shiftwidth=2

" enable mouse for all modes
set mouse=a

set statusline=%m                 " modified
set statusline+=%t                " file name
set statusline+=\                 " separator
set statusline+=%p%%              " line percentaje
set statusline+=\-                " separator
set statusline+=%L                " total lines
set statusline+=\|                " separator
set statusline+=%c                " column
set statusline+=\                 " separator
set statusline+=%Y                " type
set statusline+=\                 " separator
set statusline+=%{expand('%:h')}/ " path

" highlight cursor line
set cursorline 
" jump to matching bracket on creation
set showmatch

" wrap text
set wrap
" terminal window title set to titlestring
set title

" * Line numbering

" show line number relative to the cursor
set relativenumber
" show line number on cursos line
set number
" minimal number of columns to use for the line number
set numberwidth=1

"splitting
"split in the opposite direction
set splitright
set splitbelow

" ------------------------------------------------------------------------------
" Settings " General }}}
" ------------------------------------------------------------------------------

" ------------------------------------------------------------------------------
" Settings " Autogroup: {{{
" ------------------------------------------------------------------------------
augroup MainAutogroup
 " Remove all auto-commands from the current autogroup
  autocmd!

  " formatoptions
  " :help fo-table
  " 't'         - auto-wrap text with textwidth 
  " 'c'         - auto-wrap comments with text width, insert comment leader
  " 'q'         - allow formatting with gq
  " 'j'         - remove comment leader when joining lines
  autocmd FileType * set formatoptions=tcqj

  " source vim config after saving it
  autocmd BufWritePost $MYVIMRC nested source $MYVIMRC
augroup END

" ------------------------------------------------------------------------------
" Settings " Override Autogroup }}}
" ------------------------------------------------------------------------------

" ==============================================================================
" Settings }}}
" ==============================================================================

" ==============================================================================
" Mappings: {{{
" ==============================================================================

" ------------------------------------------------------------------------------
" Mappings " Catalog: {{{
" ------------------------------------------------------------------------------

" Unmapped Keys:
" g '+' b, c, l, y, z
" z '+' p, y, q
" Z '-' Z, Q
" yo
" CTRL-W '+' a, e, m, u
" CTRL- k, q

" Duplicates Keys:
" n CTRL-h                 | mapped to: 
" n CTRL-j                 | mapped to: 
" n CTRL-k                 | mapped to: 
" n CTRL-n                 | mapped to: 
" n CTRL-p                 | mapped to: 
" n <Right>                | mapped to: 
" n <Left>                 | mapped to: 
" n <Up>                   | mapped to: 
" n <Down>                 | mapped to: 
" n <BS>                   | mapped to: 
" n <CR>/<CTRL-M>/+        | mapped to: 
" n <Space>                | mapped to: 

" Rarely Used Keys:
" n -
" n gs
" n zh, zl
" n [m, ]m => function navi for Java-like syntax langs
" n [/ => cursos the C comment

" Unmapped Usefull Functionalities:
" :nohlsearch " MAPPED
" :ls " MAPPED
" :Explore

" ------------------------------------------------------------------------------
" Mappings " Catalog }}}
" ------------------------------------------------------------------------------

" ------------------------------------------------------------------------------
" Mappings " Extended: {{{
" ------------------------------------------------------------------------------

" QuitingWriting:
" " Rules "
" - if (w & !) use capital letters
" - q => q; Z => wq; a => all; w => w
" " :q "
nnoremap ZAQ :qa!<CR>
nnoremap Zaq :qa<CR>
nnoremap Zq :q<CR>
" " :qw "
nnoremap ZAZ :wqa!<CR>
nnoremap ZaZ :wqa<CR>
" " :w "
nnoremap Zw :w<CR>
nnoremap ZW :w!<CR>
nnoremap Zaw :wa<CR>
nnoremap ZAW :wa!<CR>

" Windows:
nnoremap <C-w>V :botright vsplit<CR>
nnoremap <C-w>S :botright split<CR>

" Unmapped:
nnoremap z/ :nohlsearch<CR>
nnoremap gb :ls<CR>:b 
" ------------------------------------------------------------------------------
" Mappings " Extended }}}
" ------------------------------------------------------------------------------

" ==============================================================================
" Mappings }}}
" ==============================================================================

" ==============================================================================
" Testing: {{{
" ==============================================================================

" ------------------------------------------------------------------------------
" Testing " Plugin Settings: {{{
" ------------------------------------------------------------------------------

" Deoplete:
" " enable "
let g:deoplete#enable_at_startup = 1

" LanguageClient_neovim:
" " LSPs setup "
 let g:LanguageClient_serverCommands = {
       \ 'elixir': ['elixir-ls'],
       \ 'ruby': ['solargraph', 'stdio'],
       \ }
" " LSPs settings "
 let g:LanguageClient_loadSettings = 1
 let g:LanguageClient_settingsPath =
        \ ".vim/settings.json"
 let g:LanguageClient_diagnosticsList = "Disabled"
" " debugging "
 let g:LanguageClient_loggingLevel='DEBUG'
 let g:LanguageClient_loggingFile='/Users/bogdan/Temp/LC.log'

" ALE:
" " linters setup "
let g:ale_linters = {
      \ 'elixir': ['credo'],
      \ }

" FZF:
" let g:fzf_history_dir = '--history=$HOME/.fzf_history'

"" Vimfiler:
"" replace netrw
"let g:vimfiler_as_default_explorer = 1

" Newtr:
let g:netrw_banner = 0
let g:netrw_liststyle= 3

" VimMixFormat:



" ------------------------------------------------------------------------------
" }}}
" ------------------------------------------------------------------------------

" ------------------------------------------------------------------------------
" Testing " General Settings: {{{
" ------------------------------------------------------------------------------

" use ripgrep
set grepprg=rg\ --vimgrep
" ------------------------------------------------------------------------------
" Testing " General Settings }}}
" ------------------------------------------------------------------------------

" ------------------------------------------------------------------------------
" Testing " Functions: {{{
" ------------------------------------------------------------------------------
" LSP Snippets Fix:
 function! ExpandLspSnippet()
     call UltiSnips#ExpandSnippetOrJump()
     if !pumvisible() || empty(v:completed_item)
         return ''
     endif
 
     " only expand Lsp if UltiSnips#ExpandSnippetOrJump not effect.
     let l:value = v:completed_item['word']
     let l:matched = len(l:value)
     if l:matched <= 0
         return ''
     endif
 
     " remove inserted chars before expand snippet
     if col('.') == col('$')
         let l:matched -= 1
         exec 'normal! ' . l:matched . 'Xx'
     else
         exec 'normal! ' . l:matched . 'X'
     endif
 
     if col('.') == col('$') - 1
         " move to $ if at the end of line.
         call cursor(line('.'), col('$'))
     endif
 
     " expand snippet now.
     call UltiSnips#Anon(l:value)
     return ''
 endfunction
 
 imap <C-k> <C-R>=ExpandLspSnippet()<CR>

" " HAS PROBLEMS WITH ESC "
" " Autocmd LSP Snippet Fix:
" let g:ulti_expand_res = 0 "default value, just set once
" function! CompleteSnippet()
"   if empty(v:completed_item)
"     return
"   endif
" 
"   call UltiSnips#ExpandSnippet()
"   if g:ulti_expand_res > 0
"     return
"   endif
"   
"   let l:complete = type(v:completed_item) == v:t_dict ? v:completed_item.word : v:completed_item
"   let l:comp_len = len(l:complete)
" 
"   let l:cur_col = mode() == 'i' ? col('.') - 2 : col('.') - 1
"   let l:cur_line = getline('.')
" 
"   let l:start = l:comp_len <= l:cur_col ? l:cur_line[:l:cur_col - l:comp_len] : ''
"   let l:end = l:cur_col < len(l:cur_line) ? l:cur_line[l:cur_col + 1 :] : ''
" 
"   call setline('.', l:start . l:end)
"   call cursor('.', l:cur_col - l:comp_len + 2)
" 
"   call UltiSnips#Anon(l:complete)
" endfunction
" 
" augroup lsp_snippet_fix
"   autocmd!
"   autocmd CompleteDone * call CompleteSnippet()
" augroup END
" 
" Grep
" command! -nargs=1 -complete=buffer Grep  execute "silent grep! <args>" | copen

" ------------------------------------------------------------------------------
" Testing " Functions }}}
" ------------------------------------------------------------------------------

" ------------------------------------------------------------------------------
" Testing " Mappings: {{{
" ------------------------------------------------------------------------------

" Leader:
nnoremap <SPACE> <Nop>
let mapleader="\<Space>"

" nnoremap <Leader>/ :Grep <C-R><C-W><CR>

" Plugins:
" " LanguageClient_Neovim "
" menu
nnoremap <Leader>lm :call LanguageClient_contextMenu()<CR>
" K
nnoremap <Leader>lk :call LanguageClient#textDocument_hover()<CR>
" definition
nnoremap <Leader>ld :call LanguageClient#textDocument_definition({
      \ 'gotoCmd': 'split',
      \})<CR>

" Nerdtree:
nnoremap <Leader>ft :NERDTreeToggle<CR>
nnoremap <Leader>ff :NERDTreeFind<CR>
" Filebeagle:
nnoremap <Leader>fe :FileBeagleBufferDir<CR>

" " FZF "
nnoremap <C-p> :FZF<CR>
nnoremap <Leader>g :Ag<CR>
nnoremap <Leader>/ :BLines<CR>
nnoremap <Leader>p :Buffers<CR>
nnoremap <Leader>h :History<CR>

" " " Vimfiler "
" nnoremap <Leader>fl :VimFilerExplorer<CR>
" nnoremap <Leader>fe :Explore<CR>
" " " Unite "
" call unite#filters#matcher_default#use(['matcher_fuzzy'])
" nnoremap <C-p> :Unite<CR>
" let g:unite_source_rec_async_command =
"       \ ['ag', '--follow', '--nocolor', '--nogroup',
"       \  '--hidden', '-g', '']
" let g:unite_source_grep_command = 'ag'
" let g:unite_source_grep_default_opts = '-i --vimgrep --nocolor --nogroup --hidden '

" Unmapped:
xnoremap <Leader>vs :sort<CR>


" Brackets:
" NAVIGATION
" " tabs "
nnoremap [t gT
nnoremap ]t gt
nnoremap ]T :tablast<CR>
nnoremap [T :tabfirst<CR>
" " quickfix "
nnoremap [q :cprevious<CR>
nnoremap ]q :cnext<CR>
" " loclist "
nnoremap [l :lprevious<CR>
nnoremap ]l :lnext<CR>
" SWITCHES
nnoremap [oq :copen<CR>
nnoremap ]oq :cclose<CR>
nnoremap [ol :lopen<CR>
nnoremap ]ol :lclose<CR>
nnoremap yor :set relativenumber!<CR>

" Folding:
" methods
nnoremap z;m :setlocal foldmethod=manual<CR>
nnoremap z;i :setlocal foldmethod=indent<CR>
nnoremap z;e :setlocal foldmethod=exp<CR>
nnoremap z;a :setlocal foldmethod=marker<CR>
nnoremap z;s :setlocal foldmethod=syntax<CR>
nnoremap z;d :setlocal foldmethod=diff<CR>
" levels
nnoremap z;0 :setlocal foldlevel=0<CR>
nnoremap z;1 :setlocal foldlevel=1<CR>
nnoremap z;2 :setlocal foldlevel=2<CR>
nnoremap z;3 :setlocal foldlevel=3<CR>
nnoremap z;4 :setlocal foldlevel=4<CR>
nnoremap z;5 :setlocal foldlevel=5<CR>
nnoremap z;6 :setlocal foldlevel=6<CR>
nnoremap z;7 :setlocal foldlevel=7<CR>
nnoremap z;8 :setlocal foldlevel=8<CR>
nnoremap z;9 :setlocal foldlevel=9<CR>

" Terminal:
tnoremap <Esc> <C-\><C-n>

" Fixes:
inoremap <expr> <Esc> pumvisible() ? "\<C-y>\<Esc>" : "\<Esc>"
" " double enter fix "
" incompatible with endwise plugin
" inoremap <expr> <CR> (pumvisible() ? "\<c-y>\<cr>" : "\<CR>")
" compatible with endwise
inoremap <expr> <silent> <CR> <SID>CRFixPuma()

function! s:CRFixPuma()
  return pumvisible() ? "\<c-y>\<cr>" : "\<CR>"
endfunction

" " esc fix "
" ------------------------------------------------------------------------------
" Testing " Mappings }}}
" ------------------------------------------------------------------------------

" ------------------------------------------------------------------------------
" Testing " Autogroup: {{{
" ------------------------------------------------------------------------------

augroup TestAutogroup
  autocmd!

  " FZF Esc collides with terminal Esc remap
  autocmd FileType fzf :tnoremap <buffer> <Esc> <C-g>

  " hardmode enable
  " autocmd VimEnter,BufNewFile,BufReadPost * silent! call HardMode()
augroup END

" ------------------------------------------------------------------------------
" Testing " Autogroup }}}
" ------------------------------------------------------------------------------

" ==============================================================================
" Testing }}}
" ==============================================================================
