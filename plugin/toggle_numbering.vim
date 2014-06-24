function! ToggleLineNumbering()
  if(&relativenumber == 1)
    set number
  else
    set relativenumber
  endif
endfunc
