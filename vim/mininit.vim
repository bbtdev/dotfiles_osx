
set runtimepath+=/Users/bogdan/.cache/dein/repos/github.com/Shougo/dein.vim

if dein#load_state('/Users/bogdan/.cache/dein')
  call dein#begin('/Users/bogdan/.cache/dein')
  call dein#add('~/.cache/dein/repos/github.com/Shougo/dein.vim')

  " Testing:
  " ============================================================================
  call dein#add('Shougo/denite.nvim')
  call dein#add('/usr/local/opt/fzf')
  call dein#add('junegunn/fzf.vim')

  call dein#end()
  call dein#save_state()
endif

" If you want to install not installed plugins on startup.
if dein#check_install()
  call dein#install()
endif


call denite#custom#var('grep', 'command', ['ag'])
call denite#custom#var('grep', 'recursive_opts', [])
call denite#custom#var('grep', 'pattern_opt', [])
call denite#custom#var('grep', 'separator', ['--'])
call denite#custom#var('grep', 'final_opts', [])
call denite#custom#var('grep', 'default_opts',
	\ [ '--skip-vcs-ignores', '--vimgrep', '--smart-case', '--hidden' ])
