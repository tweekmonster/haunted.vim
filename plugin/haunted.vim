if !has('timers')
  finish
endif

let s:cancel = get(g:, 'haunted_cancel_key', '<s-f12>')
execute 'noremap <expr> '.s:cancel.' haunted#cancel()'
execute 'noremap! <expr> '.s:cancel.' haunted#cancel()'

command! -nargs=? Haunt call haunted#run('<args>')
