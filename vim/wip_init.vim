"" ~ fillchars
"" ~ fsync
"" ~ langremap
"" ~ langnoremap
"" ! listchars
"" ! nrformats
"" ! ruler
"" ! viminfo
"
"
"" filetype specifics
"" 'on'         - enable filetype detection
"" 'plugin on'  - enable plugin files for specific filetypes
"" 'indent on'  - enable loading indent file for specific filetypes
" filetype plugin indent on
"
" syntax highlighting
" syntax on

" continue indent from previous line
" set autoindent

" load external changes to file
" set autoread

" backspace behaviour in 'Insert mode'
" - indent	allow backspacing over autoindent
" - eol	allow backspacing over line breaks (join lines)
" - start	allow backspacing over the start of insert
" set backspace=indent,eol,start

" disable bell
" set belloff=all

" removes include files scanning for autocompletion
" set complete-=i

" print messages regarding cscope database connection
" set cscopeverbose

" swap files directory
" '//' - store files using full path
" set directory=
" set backupdir=$HOME/.vim/backup//
" set undodir=$HOME/.vim/undo//

" ~> Formatting

" :help fo-table
" 'c','r','o' - insert comment leader on new line
" 'j'         - remove comment leader when joining lines
" set formatoptions+=j
set formatoptions-=cro

" command-lines history
" set history=1000


" highlight previous search pattern
" set hlsearch
" highlight search pattern while typing
" set incsearch

" always show status line
" set laststatus=2

" --> Format



" options for vim sessions
" 'options' - options and mappings
" set sessionoptions-=options


" show (partial) command
" set showcmd


" maximum number of tabs to be open on -p or :tab all
" set tabpagemax=50
  
" fast terminal connection
" set ttyfast

" enhanced wildmenu completion
" set wildmenu


" MINE


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



