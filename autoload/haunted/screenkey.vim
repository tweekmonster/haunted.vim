let s:keywin = -1
let s:chars = []
let s:cleartimer = -1
let s:special = {
      \ eval('"\<left>"'): '8592',
      \ eval('"\<up>"'): '8593',
      \ eval('"\<right>"'): '8594',
      \ eval('"\<down>"'): '8595',
      \ eval('"\<cr>"'): '254',
      \ eval('"\<bs>"'): '208',
      \ }


function! s:clear_keys(...) abort
  let s:cleartimer = -1
  let s:chars = []
endfunction


" Displays the key window and appends the key to the buffer.
function! haunted#screenkey#show(key, clear_after) abort
  if s:cleartimer != -1
    call timer_stop(s:cleartimer)
  endif

  let ei = &eventignore
  set eventignore=all

  let curwin = win_getid()

  if s:keywin == -1 || !win_gotoid(s:keywin)
    let view = winsaveview()
    belowright 8 new
    let s:keywin = win_getid()
    setlocal nowrap nonumber nospell winheight=8 buftype=nofile bufhidden=wipe
          \ nobuflisted winfixheight statusline=%#StatusLine#\  colorcolumn=

    call win_gotoid(curwin)
    call winrestview(view)
    call win_gotoid(s:keywin)
    redraw
  endif

  % delete _

  if len(a:key) == 0
    return
  endif

  let lines = repeat([''], 8)

  if has_key(s:special, a:key)
    call add(s:chars, s:special[a:key])
  elseif len(a:key) == 1
    if char2nr(a:key) < 32
      call add(s:chars, '^')
      call add(s:chars, nr2char(char2nr(a:key) + 64))
    else
      call add(s:chars, a:key)
    endif
  else
    for c in split(a:key, '.\zs')
      if char2nr(c) < 32
        call add(s:chars, '^')
        call add(s:chars, nr2char(char2nr(c) + 64))
      else
        call add(s:chars, c)
      endif
    endfor
  endif

  for c in s:chars
    let glyph = haunted#glyphs#get_char(c)
    for l in range(8)
      let lines[l] .= glyph[l]
    endfor
  endfor

  call append(0, lines)
  $ delete _
  keepjumps normal! $ze
  call win_gotoid(curwin)

  if !empty(getcmdtype()) || pumvisible()
    redraw
  endif

  let &eventignore = ei

  let s:cleartimer = timer_start(a:clear_after, function('s:clear_keys'))
endfunction


function! haunted#screenkey#hide() abort
  if s:keywin != -1
    if win_gotoid(s:keywin)
      bdelete!
    endif
    let s:keywin = -1
  endif

  if s:cleartimer != -1
    call timer_stop(s:cleartimer)
  endif

  call s:clear_keys()
endfunction
