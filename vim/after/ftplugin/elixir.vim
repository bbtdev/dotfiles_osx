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

" "method navigation"
" def defp test
nnoremap <silent><buffer> ]] m':call search('^\s*def\s\\|^\s*defp\\|^\s*test\>',"bW")<CR>
nnoremap <silent><buffer> [[ m':call search('^\s*def\s\\|^\s*defp\\|^\s*test\>',"W")<CR>
xnoremap <silent><buffer> [[ m':<C-U>exe "normal! gv"<Bar>call search('^\s*def\s\\|^\s*defp\\|^\s*test\>',"W")<CR>
xnoremap <silent><buffer> ]] m':<C-U>exe "normal! gv"<Bar>call search('^\s*def\s\\|^\s*defp\\|^\s*test\>',"bW")<CR>

" end
nnoremap <silent><buffer> [] m':call search('^\s*end\>', "bW")<CR>
nnoremap <silent><buffer> ][ m':call search('^\s*end\>', "W")<CR>
xnoremap <silent><buffer> [] m':<C-U>exe "normal! gv"<Bar>call search('^\s*end\>', "bW")<CR>
xnoremap <silent><buffer> ][ m':<C-U>exe "normal! gv"<Bar>call search('^\s*end\>', "W")<CR>

" defmodule
nnoremap <silent><buffer> ]M m':call search('^\s*defmodule\>',"bW")<CR>
nnoremap <silent><buffer> [M m':call search('^\s*defmodule\>',"W")<CR>
xnoremap <silent><buffer> ]M m':<C-U>exe "normal! gv"<Bar>call search('^\s*defmodule\>', "bW")<CR>
xnoremap <silent><buffer> [M m':<C-U>exe "normal! gv"<Bar>call search('^\s*defmodule\>', "W")<CR>

" ... do
nnoremap <silent><buffer> ]m m':call search('^.*\s\+do\:\=\n', "bW")<CR>
nnoremap <silent><buffer> [m m':call search('^.*\s\+do\:\=\n', "W")<CR>
xnoremap <silent><buffer> ]m m':<C-U>exe "normal! gv"<Bar>call search('^.*\s\+do\:\=\n', "bW")<CR>
" BUG, GOES ON THE SAME LINE BECAUSE OF ^
xnoremap <silent><buffer> [m m':<C-U>exe "normal! gv"<Bar>call search('^.*\s\+do\:\=\n', "W")<CR>

" fn
nnoremap <silent><buffer> ]f m':call search('\<fn\>', "bW")<CR>
nnoremap <silent><buffer> [f m':call search('\<fn\>', "W")<CR>
xnoremap <silent><buffer> ]f m':<C-U>exe "normal! gv"<Bar>call search('\<fn\>', "bW")<CR>
xnoremap <silent><buffer> [f m':<C-U>exe "normal! gv"<Bar>call search('\<fn\>', "W")<CR>

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
