" PLUGINS
call plug#begin('~/.vim/plugged')
  " EXPLORERS
  Plug 'kien/ctrlp.vim'
  Plug 'justinmk/vim-dirvish' " Dirvish - split explorer
  Plug 'scrooloose/nerdtree'
  " AUTOCOMPLETE
  Plug 'lifepillar/vim-mucomplete'
  " TAGS
  Plug 'majutsushi/tagbar' " Tagbar - show all tags in file
  " PRACTICAL
  Plug 'tpope/vim-repeat' " Vim-repeat - repeats actions from supported plugings
  Plug 'troydm/zoomwintab.vim' " ZoomWinTab - C-o undo
  Plug 'tpope/vim-surround'
  Plug 'Raimondi/delimitMate' " delimitMate - closes delimiter
  Plug 'tpope/vim-endwise' " adds end automatically
  " LINTS
  " Plug 'w0rp/ale'
  Plug 'vim-syntastic/syntastic' " ale conflict
  " GIT
  Plug 'tpope/vim-fugitive'
 " RUBY/RAILS
  Plug 'tpope/vim-rails'
  Plug 'vim-ruby/vim-ruby'
  Plug 'tpope/vim-bundler' " Vim-bundler - support for bundle, but also integrates gem tags
  Plug 'ngmy/vim-rubocop'
  " HTML
  "Plug 'tpope/vim-ragtag'
  " THEMES
  Plug 'rafi/awesome-vim-colorschemes'
  Plug 'altercation/vim-colors-solarized'
  " STATUS/TAB LINES
  Plug 'vim-airline/vim-airline'
  Plug 'vim-airline/vim-airline-themes'
  " MINE
  Plug 'bbtdev/railsnavi.vim'
  " TERMINAL
  Plug 'tpope/vim-dispatch'
  Plug 'christoomey/vim-tmux-navigator'
  " ELIXIR
  Plug 'elixir-editors/vim-elixir'
  Plug 'slashmili/alchemist.vim'
  " TESTING
  Plug 'chrisbra/Colorizer'
  Plug 'pangloss/vim-javascript'
  Plug 'mxw/vim-jsx'
  Plug 'othree/html5.vim'
  Plug 'tpope/vim-ragtag'
  Plug 'mattn/emmet-vim'
  Plug 'jonatasbaldin/vim-tips'
  Plug 'kchmck/vim-coffee-script'
  Plug 'mtscout6/vim-cjsx'
  Plug 'junegunn/goyo.vim'
  "" TROUBLE SHOOT ""
  "" syntastic jsx ""
  " Plug 'jaxbot/syntastic-react'
  " Plug 'pmsorhaindo/syntastic-local-eslint.vim'

call plug#end()

" GENERAL
set nocompatible      " We're running Vim, not Vi!
syntax on             " Enable syntax highlighting
filetype on           " Enable filetype detection
filetype plugin on    " Enable filetype-specific plugins
set number " sets numbering
set hidden " hide buffer errors
set tabstop=2 shiftwidth=2 expandtab " tab and spaces
autocmd FileType * setlocal formatoptions-=c formatoptions-=r formatoptions-=o " no comment on new lines
set wrap " wrap lines visually
set wildmenu " pressing tab in command

" THEMES
colorscheme solarized
set background=dark

" out
" filetype indent on    " Enable filetype-specific indenting, vim-plug does this auto

" autocompletion
" setlocal omnifunc=syntaxcomplete#Complete
" autocmd FileType ruby,eruby let g:rubycomplete_buffer_loading = 1
" autocmd FileType ruby,eruby let g:rubycomplete_classes_in_global = 1
" autocmd FileType ruby,eruby let g:rubycomplete_rails = 1

" EXTERNAL
source /Users/bogdan/dotfiles_osx/vimrc_plugins
source /Users/bogdan/dotfiles_osx/vimrc_functions
source /Users/bogdan/dotfiles_osx/vimrc_keys

