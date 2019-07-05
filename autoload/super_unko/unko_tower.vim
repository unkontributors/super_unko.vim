function! super_unko#unko_tower#unko_tower(n) abort
  let l:unko = s:create_unko_tower(a:n)
  let l:i = line(".")
  for l:line in l:unko
    call setline(l:i, l:line)
    let l:i += 1
  endfor
endfunction

" unko towerのリストを生成する。
function! s:create_unko_tower(n) abort
  let l:unko_list = []

  " 先端部分を生成
  let l:row = repeat('　', a:n + 1) . '人'
  call add(l:unko_list, l:row)

  " 段部分を生成
  let l:n = 1
  for l:i in range(1, a:n)
    " 段を生成
    let l:row = '（' . repeat('　', l:i * 2) . '　）'
    " 左側に位置調整のパディング
    let l:pad = repeat('　', a:n - l:n)
    let l:row = l:pad . l:row

    call add(l:unko_list, l:row)
    let l:n += 1
  endfor

  return l:unko_list
endfunction

