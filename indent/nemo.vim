" Vim indent file
" Language:	Nemo
" Maintainer:	Szymon Urbaś <szymon.urbas@aol.com>

" Only load this indent file when no other was loaded.
if exists("b:did_indent")
   finish
endif

let b:did_indent = 1

set smartindent

let b:undo_indent = "setl cin<"
