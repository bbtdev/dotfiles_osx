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
