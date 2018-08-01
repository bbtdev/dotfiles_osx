" Mappings:
" Testing
" " quick testing "
nnoremap <localleader>tq :execute ":split <bar> terminal mix test --trace " . 
      \substitute(expand("%"), '[^,]*test/', 'test/', '')<CR>
nnoremap <localleader>tlq :execute ":split <bar> terminal mix test --trace " . 
      \substitute(expand("%"), '[^,]*test/', 'test/', '') . ":" . line(".")<CR>
nnoremap <localleader>tiq :execute ":split <bar> terminal iex -S mix test --trace " . 
      \substitute(expand("%"), '[^,]*test/', 'test/', '')<CR>
nnoremap <localleader>tilq :execute ":split <bar> terminal iex -S mix test --trace " . 
      \substitute(expand("%"), '[^,]*test/', 'test/', '') . ":" . line(".")<CR>
" Autogroup:
" Autogroup:
" Autogroup:
augroup Elixir
  autocmd!

  " format file on write
  " autocmd BufWritePre <buffer> silent !mix format <afile>
  autocmd BufWritePost <buffer> silent !mix format %
augroup END
