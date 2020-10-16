" quit when a syntax file was already loaded
if exists("b:current_syntax")
	finish
endif

syn case ignore

" refer to fortran.vim
syn match simNumber display "\<\d\+\(_\a\w*\)\=\>"
syn match simFloat display "\<\d\+\.\d\+\(e[-+]\=\d\+\)\=\(_\a\w*\)\=\>"
syn match simFloatIll display "\<\d\+[deq][-+]\=\d\+\(_\a\w*\)\=\>"
syn match simFloatIll display "\.\d\+\([deq][-+]\=\d\+\)\=\(_\a\w*\)\=\>"
syn match simFloatIll display "\<\d\+\.\([deq][-+]\=\d\+\)\=\(_\a\w*\)\=\>"
syn match simFloatIll display "\<\d\+\.\d\+\([dq][-+]\=\d\+\)\=\(_\a\w*\)\=\>"
syn region simString start=+"+ end=+"+
syn region simStringR start=+'+ end=+'+

hi def link simNumber Number
hi def link simFloat Float
hi def link simFloatIll simFloat
hi simString guifg=#F5DEB3
hi def link simStringR simString
" end

" todo simComment
"      simOperator?

syn match simPreStart '^' nextgroup=simStart skipwhite
syn match simStart '\(RE\)\?START' contained nextgroup=simTitle skipwhite
syn match simTitle '.*' contained
syn match simNamelistStart '&\w\+'
syn match simNamelistEnd '\/'

hi def link simStart Underlined
hi def link simTitle Statement
hi def link simNamelistStart Identifier
hi def link simNamelistEnd Comment

let b:current_syntax = "_simmer"
