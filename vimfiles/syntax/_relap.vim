" quit when a syntax file was already loaded
if exists("b:current_syntax")
	finish
endif

syn match relComment '\*.*'
syn match relTitle '=.*'
syn match relCardNumber '^\d\+'

hi relComment guifg=#808080
hi def link relTitle      Statement
hi def link relCardNumber Identifier

let b:current_syntax = "_relap"
