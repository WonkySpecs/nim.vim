if (exists("b:did_ftplugin"))
  finish
endif

let b:did_ftplugin = 1

let s:cpo_save = &cpo
set cpo&vim

setlocal formatoptions-=t formatoptions+=croql
setlocal comments=:#
setlocal commentstring=#\ %s

let &cpo = s:cpo_save
unlet s:cpo_save

