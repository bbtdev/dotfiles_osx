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
  call dein#add('Shougo/denite.nvim') 

  " Autocomplete:
  " ============================================================================
  call dein#add('Shougo/deoplete.nvim')

  " Snippets:
  " ============================================================================
  call dein#add('SirVer/ultisnips')

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
" Settings " General: {{{
" ------------------------------------------------------------------------------

" theme
color molokai
" colors solarized

" set omni completion
set omnifunc=syntaxcomplete#Complete

" switch between buffers without saving
set hidden

" set path to current directory and all directories under it
set path=$PWD/**

" number of spaces for <Tab>
set tabstop=2
" in 'Insert' <Tab> inserts spaces
set expandtab
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
" Settings " Override Autogroup: {{{
" ------------------------------------------------------------------------------
augroup override
  autocmd!

  " formatoptions
  " :help fo-table
  " 't'         - auto-wrap text with textwidth 
  " 'c'         - auto-wrap comments with text width, insert comment leader
  " 'q'         - allow formatting with gq
  " 'j'         - remove comment leader when joining lines
  autocmd FileType * set formatoptions=tcqj

  " hlsearch colors
  autocmd ColorScheme * highlight Search ctermbg=LightRed
  autocmd ColorScheme * highlight Search ctermfg=Blue
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

" Misc:
nnoremap z/ :nohlsearch<CR>

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

" " Vim_lsp: {{{
" " " LSPs setup "
" " " * elixir "
" if executable('elixir-ls')
"     " pip install python-language-server
"     au User lsp_setup call lsp#register_server({
"         \ 'name': 'elixir-ls',
"         \ 'cmd': {server_info->['elixir-ls']},
"         \ 'whitelist': ['elixir'],
"         \ 'workspace_config': {'dialyzerEnabled': v:false},
"         \ })
" endif
" " " linting "
" let g:lsp_signs_enabled = 1
" let g:lsp_diagnostics_echo_cursor = 1
" " " logging "
" let g:lsp_log_verbose = 1
" let g:lsp_log_file = expand('~/vim-lsp.log')
" " }}}

" Denite:
  " " find "
	call denite#custom#var('file/rec', 'command',
	\ ['ag', '--follow', '--nocolor', '--nogroup', '-g', ''])
  " " grep "
	call denite#custom#var('grep', 'command', ['rg'])
	call denite#custom#var('grep', 'default_opts',
				\ ['--vimgrep', '--no-heading'])
	call denite#custom#var('grep', 'recursive_opts', [])
	call denite#custom#var('grep', 'pattern_opt', ['--regexp'])
	call denite#custom#var('grep', 'separator', ['--'])
	call denite#custom#var('grep', 'final_opts', [])
  "
  command! -nargs=0 Grep :Denite  grep:::! -updatetime=50
  command! -nargs=0 Find :Denite -highlight-matched-char=false file/rec
  command! -nargs=0 Ls   :Denite buffer


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
" " debugging "
 let g:LanguageClient_loggingLevel='DEBUG'
 let g:LanguageClient_loggingFile='/Users/bogdan/Temp/LC.log'

" ALE:
" " linters setup "
let g:ale_linters = {
      \ 'elixir': ['credo', 'dialyxir'],
      \ }

" " Neomake: {{{
" " " automatically run at certain events "
" call neomake#configure#automake('rw', 1000)
" " " elixir setup "
" " makers for single file
" let g:neomake_elixir_enabled_makers = ['mix', 'credo']
" " markers for not operating on a single file or when no makers are defined
" " can be called with Neomaker!
" " hacky need to find a way to call a maker
" let g:neomake_enabled_makers = ['credo']
" " }}}

" ------------------------------------------------------------------------------
" }}}
" ------------------------------------------------------------------------------

" ------------------------------------------------------------------------------
" Testing " General Settings: {{{
" ------------------------------------------------------------------------------

" Autocomplete:

" popup menu settings
" menuone  - appear for one match also
" preview  - show extra information
" noinsert - no autoinsert matchings
" set completeopt=menuone,preview,noinsert,noselect

" ------------------------------------------------------------------------------
" Testing " General Settings }}}
" ------------------------------------------------------------------------------

" ------------------------------------------------------------------------------
" Testing " Functions: {{{
" ------------------------------------------------------------------------------

" Capture:
command! -nargs=* -complete=shellcmd R new | setlocal buftype=nofile bufhidden=hide noswapfile | r !<args>

function! Redir(cmd)
	for win in range(1, winnr('$'))
		if getwinvar(win, 'scratch')
			execute win . 'windo close'
		endif
	endfor
	if a:cmd =~ '^!'
		execute "let output = system('" . substitute(a:cmd, '^!', '', '') . "')"
	else
		redir => output
		execute a:cmd
		redir END
	endif
	vnew
	let w:scratch = 1
	setlocal nobuflisted buftype=nofile bufhidden=wipe noswapfile
	call setline(1, split(output, "\n"))
endfunction

command! -nargs=1 Redir silent call Redir(<f-args>)

" LSP Snippets Fix:
" function! ExpandLspSnippet()
"     call UltiSnips#ExpandSnippetOrJump()
"     if !pumvisible() || empty(v:completed_item)
"         return ''
"     endif
" 
"     " only expand Lsp if UltiSnips#ExpandSnippetOrJump not effect.
"     let l:value = v:completed_item['word']
"     let l:matched = len(l:value)
"     if l:matched <= 0
"         return ''
"     endif
" 
"     " remove inserted chars before expand snippet
"     if col('.') == col('$')
"         let l:matched -= 1
"         exec 'normal! ' . l:matched . 'Xx'
"     else
"         exec 'normal! ' . l:matched . 'X'
"     endif
" 
"     if col('.') == col('$') - 1
"         " move to $ if at the end of line.
"         call cursor(line('.'), col('$'))
"     endif
" 
"     " expand snippet now.
"     call UltiSnips#Anon(l:value)
"     return ''
" endfunction
" 
" imap <C-k> <C-R>=ExpandLspSnippet()<CR>

" Autocmd LSP Snippet Fix:
let g:ulti_expand_res = 0 "default value, just set once
function! CompleteSnippet()
  if empty(v:completed_item)
    return
  endif

  call UltiSnips#ExpandSnippet()
  if g:ulti_expand_res > 0
    return
  endif
  
  let l:complete = type(v:completed_item) == v:t_dict ? v:completed_item.word : v:completed_item
  let l:comp_len = len(l:complete)

  let l:cur_col = mode() == 'i' ? col('.') - 2 : col('.') - 1
  let l:cur_line = getline('.')

  let l:start = l:comp_len <= l:cur_col ? l:cur_line[:l:cur_col - l:comp_len] : ''
  let l:end = l:cur_col < len(l:cur_line) ? l:cur_line[l:cur_col + 1 :] : ''

  call setline('.', l:start . l:end)
  call cursor('.', l:cur_col - l:comp_len + 2)

  call UltiSnips#Anon(l:complete)
endfunction

augroup lsp_snippet_fix
  autocmd!
  autocmd CompleteDone * call CompleteSnippet()
augroup END

" ------------------------------------------------------------------------------
" Testing " Functions }}}
" ------------------------------------------------------------------------------

" ------------------------------------------------------------------------------
" Testing " Mappings: {{{
" ------------------------------------------------------------------------------

" Leader:
nnoremap <SPACE> <Nop>
let mapleader="\<Space>"

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

" Autocomplete:
" inoremap <expr> <Tab> pumvisible() ? "<C-n>" : "<Tab>"
" inoremap <expr> <Tab> pumvisible() ? "<Down>" : "<Tab>"
" inoremap <expr> <s-tab> pumvisible()? "<Up>" : "<Tab>"
" inoremap <expr> <Space> pumvisible()? "<C-Y><Space>" : "<Space>"
" inoremap <expr> <Esc> pumvisible()? "<C-e>" : "<Esc>"

" " double enter fix "
inoremap <expr> <CR> (pumvisible() ? "\<c-y>\<cr>" : "\<CR>")

" ------------------------------------------------------------------------------
" Testing " Mappings }}}
" ------------------------------------------------------------------------------

" ==============================================================================
" Testing }}}
" ==============================================================================
