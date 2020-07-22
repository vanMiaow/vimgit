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
