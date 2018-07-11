" ==============================================================================
" => 
" ==============================================================================

"


"" ~ fillchars
"" ~ fsync
"" ~ langremap
"" ~ langnoremap
"" ! listchars
"" ! nrformats
"" ! ruler
"" ! viminfo

"" filetype specifics
"" 'on'         - enable filetype detection
"" 'plugin on'  - enable plugin files for specific filetypes
"" 'indent on'  - enable loading indent file for specific filetypes
filetype plugin indent on
"
" syntax highlighting
syntax on

" continue indent from previous line
set autoindent

" load external changes to file
set autoread

" backspace behaviour in 'Insert mode'
" - indent	allow backspacing over autoindent
" - eol	allow backspacing over line breaks (join lines)
" - start	allow backspacing over the start of insert
set backspace=indent,eol,start

" disable bell
set belloff=all

" removes include files scanning for autocompletion
set complete-=i

" print messages regarding cscope database connection
set cscopeverbose

" swap files directory
" '//' - store files using full path
set directory=$HOME/.vim/swap//
set backupdir=$HOME/.vim/backup//
set undodir=$HOME/.vim/undo//

" command-lines history
set history=1000

" highlight previous search pattern
set hlsearch
" highlight search pattern while typing
set incsearch

" always show status line
set laststatus=2

" --> Format



" options for vim sessions
" 'options' - options and mappings
set sessionoptions-=options


" show (partial) command
set showcmd


" maximum number of tabs to be open on -p or :tab all
set tabpagemax=50
  
" fast terminal connection
set ttyfast

" enhanced wildmenu completion
set wildmenu


	
" MINE
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



augroup universal
  autocmd!

  " :help fo-table
  " 't'         - auto-wrap text with textwidth 
  " 'c'         - auto-wrap comments with text width, insert comment leader
  " 'q'         - allow formatting with gq
  " 'j'         - remove comment leader when joining lines
  autocmd FileType * set formatoptions=tcqj
augroup END

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
" minimal number of columns to use for the line number
set numberwidth=1


" Mapping ideas
nnoremap g/ :nohlsearch<CR>

" buffer
nnoremap gl :ls<CR>:b<Space>
nnoremap gb :b#<CR>

" tAb
" CTRW a(tAb)(Split)
nnoremap <C-w>as :tab split<CR>
" CTRLW an
nnoremap <C-w>an :tabnew<CR>
nnoremap <C-w>ac :tabclose<CR>
nnoremap <C-w>ae :tabnew \|:terminal ++curwin<CR>

" tErminal
nnoremap <C-w>E :terminal ++curwin<CR>



"Quiting ZZ - :x\:wq | ZQ -q! 
" zq -:q
" Zw -:w





"
" ==> Remapple keys
"
" ===> Empty
" gb gc gl gy gz
" zp zy, zq
" Z(all - Z, Q)
" CTRL-W a,e, m,u, 


"

"
" ===> Duplicates
"

" Mappings that are duplicates for more convenient/popular mappings

" n CTRL-h
" mapped to: 

" n CTRL-j
" mapped to: 

" n CTRL-k
" mapped to: 

" n CTRL-n
" mapped to: 

" n CTRL-p
" mapped to: 

" n <Right>
" mapped to: 

" n <Left>
" mapped to: 

" n <Up>
" mapped to: 

" n <Down>
" mapped to: 

" n <BS>
" mapped to: 

" n <CR>/<CTRL-M>/+
" mapped to: 

" n <Space>
" mapped to: 


"
" ===> Useless mapping
"

" Mappings that are generally considerable useless/usefull in niche situations/unpopular

" n -
" info: [count] lines upward, on the first non-blank character |linewise|.

" gs
" info: sleep

" when wrap is off
" zh
" zl


"
" ===> Usefull commands not mapped
"

" Commands that are generally considerared usefull, but are not mapped

" quiting
" :q
" :w
" :qa!
" :wqa
" :wqa!

":nohlsearch 
 " info: stops highlighting of search

" folding
" setlocal foldmethod
" setlocal foldlevel


":tabedit
":tab split
":tabedit %
":tabedit %:h
":tabclose


"terminal
" esc
" terminal here
" terminal vsplit
" terminal split
" terminal in tabedit
" terminal close window

" buffers
"ls
"b
"b#
"bd

" quickfix window
"copen
"cclose

" q
":qa
":confirm quitall
":qa!
