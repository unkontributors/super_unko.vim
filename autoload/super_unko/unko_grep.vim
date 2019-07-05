function! super_unko#unko_grep#unko_grep() abort
  let l:matched = []
  let l:unkos = super_unko#unko_ls#get_unko_list()
  for l:buf_line in getbufline('', 1, '$')
    for l:unko in l:unkos
      if match(l:buf_line, l:unko) != -1
        call add(l:matched, l:buf_line)
        break
      endif
    endfor
    execute "1delete"
  endfor

  " マッチしたもののみ追加する
  let l:i = 1
  for l:line in l:matched
    call setline(l:i, l:line)
    let l:i += 1
  endfor
endfunction
