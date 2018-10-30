" ==============================================================================
" Plugins: {{{ 
" ==============================================================================
call plug#begin('~/.vim/plugged')

  " Functionality Enhancements:
  " ============================================================================
  " surround
  Plug 'tpope/vim-surround'
  " commentary
  Plug 'tpope/vim-commentary'

  " Languages_Support:
  " ============================================================================
  Plug 'https://github.com/sheerun/vim-polyglot'
  Plug 'vim-ruby/vim-ruby'
  Plug 'elixir-editors/vim-elixir'

  " Themes:
  " ============================================================================
  Plug 'tomasr/molokai'
  Plug 'altercation/vim-colors-solarized'

  " Autocomplete:
  " ============================================================================
  Plug 'Raimondi/delimitMate'

  " Testing:
  " ============================================================================
  Plug 'qstrahl/vim-dentures'
  " fuzzy
  Plug '/usr/local/opt/fzf'
  Plug 'junegunn/fzf.vim'

  " pasting
  Plug 'junegunn/vim-peekaboo'

call plug#end()


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
set path=$PWD/**,$HOME/dotfiles_osx/**

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
  autocmd BufWritePost init.vim nested source $MYVIMRC
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
" CTRL- k, _, [

" Duplicates Keys:
" n CTRL-h                 | mapped to: 
" n CTRL-j                 | mapped to: 
" n CTRL-k                 | mapped to: 
" n CTRL-n                 | mapped to: 
" n CTRL-p                 | mapped to: 
" n CTRL-i/<Tab>           | mapped to: 
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

" FZF:
" let g:fzf_history_dir = '--history=$HOME/.fzf_history'

"" Vimfiler:
"" replace netrw
"let g:vimfiler_as_default_explorer = 1

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

" " FZF "
nnoremap <C-p> :FZF<CR>
nnoremap <Leader>g :Ag<CR>
nnoremap <Leader>/ :BLines<CR>
nnoremap <Leader>p :Buffers<CR>
nnoremap <Leader>h :History<CR>

" Unmapped:
xnoremap <Leader>vs :sort<CR>

" Mix:
nnoremap zp :registers<CR>:put<Space>

" Brackets:
" NAVIGATION
" " buffers "
nnoremap [b :bprevious<CR>
nnoremap ]b :bnext<CR>
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

" Tabs:
nnoremap <C-w>A :tabnew %<CR>
nnoremap <C-w>ao :tabnew %<CR>
nnoremap <C-w>an :tabnew<CR>
nnoremap <C-w>ac :tabclose<CR>
nnoremap <C-w>ae :tabnew <bar> terminal<CR>

" Terminal:
" Esc in terminal
tnoremap <Esc> <C-\><C-n>
nnoremap <C-w>E :terminal<CR>
nnoremap <C-w>eo :terminal<CR>

" Fixes:
inoremap <expr> <Esc> pumvisible() ? "\<C-y>\<Esc>" : "\<Esc>"
" " double enter fix "
" incompatible with endwise plugin
" inoremap <expr> <CR> (pumvisible() ? "\<c-y>\<cr>" : "\<CR>")
" compatible with endwise
" inoremap <expr> <silent> <CR> CRFixPuma()
" 
" function! CRFixPuma()
"   return pumvisible() ? "\<c-y>\<cr>" : "\<CR>"
" endfunction

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
