if exists("current_compiler")
  finish
endif

let current_compiler = "nimrod"

if exists(":CompilerSet") != 2 " older Vim always used :setlocal
  command -nargs=* CompilerSet setlocal <args>
endif

let s:cpo_save = &cpo
set cpo-=C

CompilerSet makeprg=nimrod\ c\ $*

CompilerSet errorformat=
    \%f(%l,\ %c)\ Error:\ %m,
    \%f(%l,\ %c)\ Hint:\ %m,
    \%f(%l,\ %c)\ Warning:\ %m

let &cpo = s:cpo_save
unlet s:cpo_save

" vim: nowrap sw=2 sts=2 ts=8:

