function Test()
	call _user_autoload#_general_autoload#Test()
endfunction

" General Function

function Trim()
	normal mxHmy
	if search('\v\s+$') == 0
		echo 'No trail.'
	else
		execute '%s/\v\s+$//g'
		echo 'Done.'
	endif
	normal `yzt`x
endfunction

function Trim_line()
	normal mx0
	if search('\v\s+$', 'c', line('.')) == 0
		echo 'No trail.'
	else
		execute 's/\v\s+$//'
		echo 'Done.'
	endif
	normal `x
endfunction
