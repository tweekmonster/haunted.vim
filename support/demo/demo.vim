function! Months()
  call complete(1, ['January', 'February', 'March',
        \ 'April', 'May', 'June', 'July', 'August', 'September',
        \ 'October', 'November', 'December'])
  return ''
endfunction

inoremap <right> <c-r>=Months()<cr>

