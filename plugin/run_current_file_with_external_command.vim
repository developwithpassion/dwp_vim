if !exists("g:external_tool")
  let g:external_tool = "echo {current_file}"
endif

function! dwp#run_current_file_with_external_command()
  let l:current_file = @%
  let l:command = "!clear && echo " . g:external_tool . " && " . g:external_tool
  execute substitute(g:external_tool, "{current_file}", l:current_file, "g")
endfunction
