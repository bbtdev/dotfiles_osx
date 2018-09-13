fun! My_CR_map()
  echo "XXXXXXXXXXXXXXXXX"
  if pumvisible()
    execute "normal v"
  endif
  " "<CR>" via delimitMateCR
  let r = "\<Plug>delimitMateCR"
  let r .= "\<Plug>DiscretionaryEnd"
  return r
endfun
imap <expr> <CR> My_CR_map()
