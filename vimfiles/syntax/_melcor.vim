" quit when a syntax file was already loaded
if exists("b:current_syntax")
	finish
endif

syn case ignore

" refer to fortran.vim
syn match melNumber display "\<\d\+\(_\a\w*\)\=\>"
syn match melFloat display "\<\d\+\.\d\+\(e[-+]\=\d\+\)\=\(_\a\w*\)\=\>"
syn match melFloatIll display "\<\d\+[deq][-+]\=\d\+\(_\a\w*\)\=\>"
syn match melFloatIll display "\.\d\+\([deq][-+]\=\d\+\)\=\(_\a\w*\)\=\>"
syn match melFloatIll display "\<\d\+\.\([deq][-+]\=\d\+\)\=\(_\a\w*\)\=\>"
syn match melFloatIll display "\<\d\+\.\d\+\([dq][-+]\=\d\+\)\=\(_\a\w*\)\=\>"
syn region melString start=+"+ end=+"+
syn region melStringR start=+'+ end=+'+

hi def link melNumber Number
hi def link melFloat Float
hi def link melFloatIll melFloat
hi melString guifg=#F5DEB3
hi def link melStringR melString
" end

syn match melComment '!.*'
syn match melProgram '^\(END\)\?\s*PROGRAM\s\+MEL\(GEN\|COR\)'
syn match melCardName '^\w\+_\w\+'
syn match melInput '^\w\+_INPUT'
syn match melID '^\w\+_ID'
syn match melExecTitle 'EXEC_TITLE' nextgroup=melTitle skipwhite
syn region melTitle start=+"+ end=+"+ contained
syn region melTitle start=+'+ end=+'+ contained
syn match melLineNumber '^\s\+\d\+'

hi melComment guifg=#808080
hi def link melProgram Underlined
hi def link melCardName Identifier
hi melInput guifg=#00BFFF
hi melID guifg=#FFD700
hi def link melExecTitle melCardName
hi def link melTitle Statement
hi melLineNumber guifg=cyan

let b:current_syntax = "_melcor"
