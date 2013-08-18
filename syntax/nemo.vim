" Vim syntax file
"
" Language: Nemo
" Maintainer: Szymon Urbaś <szymon.urbas@aol.com>

if exists("b:current_syntax")
  finish
endif

" TODO
syn keyword nemoTodo TODO FIX FIXME XXX NOTE

" null
syn keyword nemoNull null

" Operators
syn match nemoOperator '[+-=\*/%\[\]!<>]'
syn match nemoPunctuation "[,\.;()\{\}]"

" Keywords
syn keyword nemoKeyword if unless while until else for return use
syn keyword nemoKeyword const goto my

" Labels
syn match nemoLabel '^\s*[a-zA-Z][a-zA-Z0-9]\+\s*:\s*'

" Functions
syn keyword nemoPredef assert strlen print printf id len nextgroup=nemoFunOpt skipwhite
syn match nemoUserdef "\<\h\w*\>\(\s\|\n\)*("me=e-1

" Integers, floats and strings
syn match nemoFloat '\d*\.\d\+'
syn match nemoInteger  '\d\+'
syn region nemoString start="\"" end="\"" contains=nemoStringSpecial,nemoStringSpecialError

" Specials in strings
syn match nemoStringSpecialError '\\[^abefnrt'"\\]' contained
syn match nemoStringSpecial '\\[abefnrt'"\\]' contained
syn match nemoStringSpecial '%[%ifsa]' contained

" Funcdef options
syn match nemoFunOpt "\-[a-zA-Z]\+" contained
syn match nemoFunArg "[a-zA-Z][a-zA-Z0-9]*" contained
syn match nemoFunName "[a-zA-Z][a-zA-Z0-9_]*" contained
syn region nemoFunDef end=/{\|;/ matchgroup=nemoKeyword start=/\<fun\>/ contains=nemoFunOpt,nemoFunArg

" Comments
syn region nemoComment start="/\*" end="\*/" contains=nemoTodo
syn match  nemoComment "#.*$" contains=nemoTodo

" Linking
hi def link nemoOperator           Keyword
hi def link nemoKeyword            Keyword
hi def link nemoLabel              Statement
hi def link nemoPredef             Function
hi def link nemoUserdef            Function
hi def link nemoFunName            Function
hi def link nemoFunArg             Keyword
hi def link nemoFunOpt             Special
hi def link nemoPunctuation        Special
hi def link nemoInteger            Number
hi def link nemoFloat              Number
hi def link nemoString             String
hi def link nemoStringSpecial      Special
hi def link nemoStringSpecialError Error
hi def link nemoTodo               Todo
hi def link nemoComment            Comment
hi def link nemoNull               Special

