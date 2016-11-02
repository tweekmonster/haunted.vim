if !has('timers')
  finish
endif

noremap <expr> <f12> haunted#cancel()
noremap! <expr> <f12> haunted#cancel()
