" quit when a syntax file was already loaded
if exists("b:current_syntax")
	finish
endif

" copy from MAYA Extension Language
sy case ignore
sy match	melInteger	"\<\d\+\(e[-+]\=\d\+\)\=\>"
sy match	melFloat	"\<\d\+\(e[-+]\=\d\+\)\=f\>"
sy match	melFloat	"\<\d\+\.\d*\(e[-+]\=\d\+\)\=f\=\>"
sy match	melFloat	"\.\d\+\(e[-+]\=\d\+\)\=f\=\>"
sy case match
hi def link melInteger	Number
hi def link melFloat	Float
" copy end

syn match melComment '!.*'
syn match melProgram '^\(END\)\?\s*PROGRAM\s\+MEL\(GEN\|COR\)'
syn match melCardName '^\w\+_\w\+'
syn match melInput '^\w\+_INPUT'
syn match melID '^\w\+_ID'
syn match melExecTitle 'EXEC_TITLE' nextgroup=melTitle skipwhite
syn match melTitle '\'.*\'' contained
syn region melString start='\'' end='\'' contains=melString keepend
syn match melString '.*' contained
syn match melLineNumber '^\s\+\d\+'

hi melComment guifg=#808080
hi def link melProgram Underlined
hi def link melCardName Identifier
hi melInput guifg=#00BFFF
hi melID guifg=#FFD700
hi def link melExecTitle Identifier
hi def link melTitle Statement
hi melString guifg=#F5DEB3
hi melLineNumber guifg=cyan

let b:current_syntax = "_melcor"
