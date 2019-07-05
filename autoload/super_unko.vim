let s:save_cpo = &cpo
set cpo&vim

" カレントバッファにunko towerを書き込む。
" NOTE: 可変長引数を受け取るときは ... と書く。
function! super_unko#unko_tower(...)
  " 引数未指定のときのデフォルト段数は 3
  let l:n = 3
  if 1 <= a:0
    " a:0は引数の数
    " a:1で第一引数を取得できる
    let l:n = a:1
  endif

  let l:unko = s:create_unko_tower(l:n)
  let l:i = 1
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

let &cpo = s:save_cpo
unlet s:save_cpo
