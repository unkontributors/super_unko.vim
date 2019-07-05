function! super_unko#unko_tr#unko_tr() abort
  " 置換元文字列のリストを取得
  let l:unkos = super_unko#unko_ls#get_unko_list()

  " カレントバッファの文字列を行単位で全て取得
  " 全てのテキストを置換して上書き置換する
  let l:i = 1
  for l:buf_line in getbufline('', 1, '$')
    let l:new_line = l:buf_line
    for l:unko in l:unkos
      let l:new_line = substitute(l:new_line, l:unko, '💩', 'g')
    endfor
    call setline(l:i, l:new_line)
    let l:i += 1
  endfor
endfunction
