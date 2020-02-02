function! goalternate#exec(bang, cmd) abort
  let file = expand('%')
  if empty(file)
    echo "no buffer name"
    return
  elseif file =~# '^\f\+_test\.go$'
    let l:root = split(file, '_test.go$')[0]
    let l:alt_file = l:root . ".go"
  elseif file =~# '^\f\+\.go$'
    let l:root = split(file, ".go$")[0]
    let l:alt_file = l:root . '_test.go'
  else
    echo "not a go file"
    return
  endif

  if !filereadable(alt_file) && !bufexists(alt_file) && !a:bang
    echo "couldn't find ".alt_file
    return
  elseif empty(a:cmd)
    execute ":edit " . alt_file
  else
    execute ":" . a:cmd . " " . alt_file
  endif
endfunction

