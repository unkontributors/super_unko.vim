let s:unko_list = [
      \   'うんこ'
      \ , 'うんち'
      \ , '下痢'
      \ , 'うんこっこ'
      \ , 'うんこもりもり'
      \ , 'poo'
      \ , 'feces'
      \ , 'shit'
      \ , 'crap'
      \ , 'caca'
      \ , 'merde'
      \ , 'Caga'
      \ , 'mierda'
      \ , 'Kacke'
      \ , 'Scheiße'
      \ , 'Feci'
      \ , 'Merda'
      \ , 'Merda'
      \ , 'Cocô'
      \ , 'Fezes'
      \ , 'σκατά'
      \ , 'Какашка'
      \ , '㞎㞎'
      \ , '狗屁'
      \ , '똥'
      \ , 'ขี้'
      \ , '💩'
      \ ]

function! super_unko#unko_ls#unko_ls() abort
  let l:unkos = super_unko#unko_ls#get_unko_list()
  let l:i = line('.')
  for l:unko in l:unkos
    call setline(l:i, l:unko)
    let l:i += 1
  endfor
endfunction

function! super_unko#unko_ls#get_unko_list() abort
  return s:unko_list
endfunction
