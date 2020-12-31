function Test()
	call _user_autoload#_general_autoload#Test()
endfunction

" General Function

function Trim()
	normal mxHmy
	if search('\v\s+$') == 0
		echo 'No trail.'
	else
		execute '%substitute/\v\s+$//g'
	endif
	normal `yzt`x
endfunction

function Trim_line()
	normal mx0
	if search('\v\s+$', 'c', line('.')) == 0
		echo 'No trail.'
	else
		execute 'substitute/\v\s+$/'
	endif
	normal `x
endfunction

function Delete_end()
	normal d$
endfunction
