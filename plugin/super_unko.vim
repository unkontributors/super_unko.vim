if exists("g:loaded_super_unko")
  finish
endif
let g:loaded_super_unko = 1

let s:save_cpo = &cpo
set cpo&vim

" ----------------------------------------------------------------------------
" ここからコマンド定義。ほかは変更不要
" ----------------------------------------------------------------------------

if !exists(":UnkoTower")
  " 引数を取得するときは <f-args> と書く。
  " 息数を1つ、あるいは0個指定する場合は　nargs=? を指定する。
  command! -nargs=? UnkoTower call super_unko#unko_tower(<f-args>)
  command! -nargs=0 BigUnkoShow call super_unko#bigunko_show()
  command! -nargs=0 UnkoTr call super_unko#unko_tr()
  command! -nargs=0 UnkoLs call super_unko#unko_ls()
endif

" ----------------------------------------------------------------------------
" ここまでコマンド定義。ほかは変更不要
" ----------------------------------------------------------------------------

let &cpo = s:save_cpo
unlet s:save_cpo
