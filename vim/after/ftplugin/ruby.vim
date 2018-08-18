" Mappings:

" "method navigation"
" def it test
nnoremap <silent><buffer> ]] m':call search('^\s*def\s\\|^\s*it\>',"bW")<CR>
nnoremap <silent><buffer> [[ m':call search('^\s*def\s\\|^\s*it\>',"W")<CR>
xnoremap <silent><buffer> [[ m':<C-U>exe "normal! gv"<Bar>call search('^\s*def\s\\|^\s*it\>',"W")<CR>
xnoremap <silent><buffer> ]] m':<C-U>exe "normal! gv"<Bar>call search('^\s*def\s\\|^\s*it\>',"bW")<CR>

" end
nnoremap <silent><buffer> [] m':call search('^\s*end\>', "bW")<CR>
nnoremap <silent><buffer> ][ m':call search('^\s*end\>', "W")<CR>
xnoremap <silent><buffer> [] m':<C-U>exe "normal! gv"<Bar>call search('^\s*end\>', "bW")<CR>
xnoremap <silent><buffer> ][ m':<C-U>exe "normal! gv"<Bar>call search('^\s*end\>', "W")<CR>

" ckass module
nnoremap <silent><buffer> ]M m':call search('^\s*module\s\\|^\s*class',"bW")<CR>
nnoremap <silent><buffer> [M m':call search('^\s*module\s\\|^\s*class',"W")<CR>
xnoremap <silent><buffer> ]M m':<C-U>exe "normal! gv"<Bar>call search(''^\s*module\s\\|^\s*class>, "bW")<CR>
xnoremap <silent><buffer> [M m':<C-U>exe "normal! gv"<Bar>call search('^\s*module\s\\|^\s*class>', "W")<CR>


" ... do
nnoremap <silent><buffer> ]m m':call search('^.*\s\+do\n', "bW")<CR>
nnoremap <silent><buffer> [m m':call search('^.*\s\+do\n', "W")<CR>
xnoremap <silent><buffer> ]m m':<C-U>exe "normal! gv"<Bar>call search('^.*\s\+do\n', "bW")<CR>
xnoremap <silent><buffer> [m m':<C-U>exe "normal! gv"<Bar>call search('^.*\s\+do\n', "W")<CR>

" fn
" nnoremap <silent><buffer> ]f m':call search('\<fn\>', "bW")<CR>
" nnoremap <silent><buffer> [f m':call search('\<fn\>', "W")<CR>
" xnoremap <silent><buffer> ]f m':<C-U>exe "normal! gv"<Bar>call search('\<fn\>', "bW")<CR>
" xnoremap <silent><buffer> [f m':<C-U>exe "normal! gv"<Bar>call search('\<fn\>', "W")<CR>
" Autogroups:

augroup RubyMarks
  autocmd!

  autocmd BufLeave *spec.rb normal! mS
  autocmd BufLeave *steps.rb normal! mS
  autocmd BufLeave *controller.rb normal! mC
  autocmd BufLeave */models/*.rb normal! mM
  autocmd BufLeave */tasks/*.rake normal! mT
  autocmd BufLeave *.html.erb normal! mH
  autocmd BufLeave *.json.rabl normal! mH
augroup END
