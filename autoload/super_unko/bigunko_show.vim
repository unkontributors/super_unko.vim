let s:bigunko = [
      \   'gggggggggggggggggggggggggggggggggggggggggggggggggggggggggggg'
      \ , 'gggggggggggggggggggggggggggggggggggggggggggggggggggggggggggg'
      \ , 'ggggggggggggggggggggggggggwwgggggggggggggggggggggggggggggggg'
      \ , 'ggggggggggggggggggggggggggGGBBgggggggggggggggggggggggggggggg'
      \ , 'ggggggggggggggggggggggggggBBBBBBGGgggggggggggggggggggggggggg'
      \ , 'ggggggggggggggggggggggggBBBBBBBBBBBBgggggggggggggggggggggggg'
      \ , 'ggggggggggggggggggggggBBBBBBBBBBBBBBgggggggggggggggggggggggg'
      \ , 'ggggggggggggggggggggggggBBBBBBBBBBBBBBgggggggggggggggggggggg'
      \ , 'ggggggggggggggggggggGGGGBBBBBBBBBBBBGGgggggggggggggggggggggg'
      \ , 'ggggggggggggggggggggGGBBBBBBBBBBBBGGBBwwgggggggggggggggggggg'
      \ , 'ggggggggggggggggggBBBBBBBBBBBBBBGGGGGGGGBBgggggggggggggggggg'
      \ , 'ggggggggggggggggggGGggwwGGGGGGGGGGBBwwwwGGGGgggggggggggggggg'
      \ , 'ggggggggggggggggggGGwwwwwwGGGGGGGGwwwwwwggGGgggggggggggggggg'
      \ , 'ggggggggggggggggGGwwggbbbbwwBBBBBBwwbbbbwwwwGGgggggggggggggg'
      \ , 'ggggggggggggggBBBBwwbbbbbbwwBBBBwwwwbbbbwwwwBBBBgggggggggggg'
      \ , 'ggggggggggggggBBBBwwbbbbbbwwGGGGGGwwbbbbwwwwBBGGgggggggggggg'
      \ , 'ggggggggggggggGGGGBBwwwwwwGGBBGGGGwwwwwwwwBBBBGGgggggggggggg'
      \ , 'ggggggggggggggGGBBBBGGwwGGGGGGBBBBBBGGwwBBBBGGgggggggggggggg'
      \ , 'ggggggggggBBGGGGGGGGGGGGGGBBBBBBBBBBBBBBGGGGGGBBGGgggggggggg'
      \ , 'ggggggggBBGGGGBBBBBBBBwwwwwwwwwwwwwwwwGGGGGGBBBBBBGGgggggggg'
      \ , 'ggggggggBBBBBBBBBBBBBBBBBBwwwwwwwwwwGGGGBBBBBBBBBBBBgggggggg'
      \ , 'ggggggggBBBBBBBBBBBBBBBBBBGGwwwwwwGGGGBBBBBBBBBBBBGGgggggggg'
      \ , 'ggggggggGGGGBBGGGGGGGGGGGGGGGGGGGGBBBBBBBBBBBBGGGGGGgggggggg'
      \ , 'ggggggggggGGGGGGGGggggggggGGGGGGGGGGGGGGGGGGGGgggggggggggggg'
      \ , 'gggggggggggggggggggggggggggggggggggggggggggggggggggggggggggg'
      \ , 'gggggggggggggggggggggggggggggggggggggggggggggggggggggggggggg'
      \ , 'gggggggggggggggggggggggggggggggggggggggggggggggggggggggggggg'
      \ , 'gggggggggggggggggggggggggggggggggggggggggggggggggggggggggggg'
      \ , 'gggggggggggggggggggggggggggggggggggggggggggggggggggggggggggg'
      \ , 'gggggggggggggggggggggggggggggggggggggggggggggggggggggggggggg'
      \ ]

function! super_unko#bigunko_show#bigunko_show() abort
  call s:init_buffer()
  let l:i = line('.')
  for l:line in s:bigunko
    call setline(l:i, l:line)
    let l:i += 1
  endfor
endfunction

" テキスト描画用バッファを初期化する。
function! s:init_buffer() abort
  silent edit 'bigunko_show'
  setlocal bufhidden=hide
  setlocal buftype=nofile
  setlocal colorcolumn=
  setlocal foldcolumn=0
  setlocal hidden
  setlocal nobuflisted
  setlocal nofoldenable
  setlocal nolist
  setlocal nomodeline
  setlocal nonumber
  setlocal norelativenumber
  setlocal nospell
  setlocal noswapfile
  setlocal nowrap
  setlocal winfixheight

  syn match SuperUnkoBigunkoShowGrey 'g'
  hi SuperUnkoBigunkoShowGrey ctermfg=darkgrey ctermbg=darkgrey guifg=darkgrey guibg=darkgrey

  syn match SuperUnkoBigunkoShowBrown 'B'
  hi SuperUnkoBigunkoShowBrown ctermfg=brown ctermbg=brown guifg=brown guibg=brown

  syn match SuperUnkoBigunkoShowBlack 'b'
  hi SuperUnkoBigunkoShowBlack ctermfg=black ctermbg=black guifg=black guibg=black

  syn match SuperUnkoBigunkoShowGreen 'G'
  hi SuperUnkoBigunkoShowGreen ctermfg=darkgreen ctermbg=darkgreen guifg=darkgreen guibg=darkgreen

  syn match SuperUnkoBigunkoShowWhite 'w'
  hi SuperUnkoBigunkoShowWhite ctermfg=white ctermbg=white guifg=white guibg=white
endfunction
