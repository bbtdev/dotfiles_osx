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
augroup Elixir
  autocmd!

  " marks
  autocmd BufLeave *_test.exs normal! mT
  autocmd BufLeave gateway.exs normal! mG
  autocmd BufLeave *_controller.ex normal! mC
  autocmd BufLeave *_service.ex normal! mS
  autocmd BufLeave *_behaviour.ex normal! mB
  autocmd BufLeave */models/*.ex normal! mM
  autocmd BufLeave */bo/*.ex normal! mO
  autocmd BufLeave *.html.eex normal! mE
  autocmd BufLeave *_view.ex normal! mV
  autocmd BufLeave *_helpers.ex normal! mH
  autocmd BufLeave *_helper.ex normal! mH

  " format file on write
  " autocmd BufWritePre <buffer> silent !mix format <afile>
  " autocmd BufWritePost <buffer> silent !mix format %

  " help :% :range!
  " - is a is a command-line argument to format that tells it to read from standard input instead of from a file.
  " autocmd BufWritePre <buffer> silent %!mix format -
augroup END
