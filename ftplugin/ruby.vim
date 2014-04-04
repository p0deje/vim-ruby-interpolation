" Ruby string interpolation
function! s:InsertInterpolation()
  let before = getline('.')[col('^'):col('.')]
  let after  = getline('.')[col('.'):col('$')]
  " check that we're in double-quotes string
  if before =~# '"' && after =~# '"'
    execute "normal! a{}\<Esc>h"
  endif
endfunction

inoremap <silent><buffer> # #<Esc>:call <SID>InsertInterpolation()<Cr>a
