let s:save_cpo = &cpo
set cpo&vim

" カレントバッファにunko towerを書き込む。
" NOTE: 可変長引数を受け取るときは ... と書く。
function! super_unko#unko_tower(...) abort
  " 引数未指定のときのデフォルト段数は 3
  let l:n = 3
  if 1 <= a:0
    " a:0は引数の数
    " a:1で第一引数を取得できる
    let l:n = a:1
  endif

  call super_unko#unko_tower#unko_tower(l:n)
endfunction

function! super_unko#bigunko_show() abort
  call super_unko#bigunko_show#bigunko_show()
endfunction

function! super_unko#unko_tr() abort
  call super_unko#unko_tr#unko_tr()
endfunction

function! super_unko#unko_ls() abort
  call super_unko#unko_ls#unko_ls()
endfunction

function! super_unko#unko_grep() abort
  call super_unko#unko_grep#unko_grep()
endfunction

let &cpo = s:save_cpo
unlet s:save_cpo
