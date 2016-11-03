if !has('timers')
  finish
endif

" Demo vars
let s:default_config = {
      \ 'key_delay': 80,
      \ 'key_echo': 0,
      \ }

let s:demo_pre = [
      \ copy(s:default_config),
      \ {'execute': 'echomsg "Demo starting in 3"'},
      \ {'pause': 1000},
      \ {'execute': 'echomsg "Demo starting in 2"'},
      \ {'pause': 1000},
      \ {'execute': 'echomsg "Demo starting in 1"'},
      \ {'pause': 1000},
      \ ]

let s:demo_boilerplate = {'i': 0, 'seq_i': 0, 'seq': [], 'config': {}}
let s:demo = {}


" Stolen from: https://git.io/vXZBO
function! s:randnum(max) abort
  return str2nr(matchstr(reltimestr(reltime()), '\v\.@<=\d+')[1:]) % a:max
endfunction


function! s:randrange(lower, upper) abort
  return s:randnum(a:upper - a:lower + 1) + a:lower
endfunction


" Function called to advance the demo.
function! s:demo_tick(...) abort
  if empty(s:demo) || s:demo.seq_i < 0 || s:demo.seq_i >= len(s:demo.seq)
    let s:demo = {}
    return
  endif

  let cur = s:demo.seq[s:demo.seq_i]
  if type(cur) == type({})
    for [k, v] in items(cur)
      let s:demo.config[k] = v
    endfor
    " call extend(s:demo.config, cur)
    let s:demo.seq_i += 1
    let s:demo.i = 0

    if has_key(s:demo.config, 'execute')
      execute s:demo.config.execute
      call remove(s:demo.config, 'execute')
    endif
  else
    if has_key(s:demo.config, 'feed_full')
      call feedkeys(s:demo.seq[s:demo.seq_i], 't')
      let s:demo.i = 0
      let s:demo.seq_i += 1
      call remove(s:demo.config, 'feed_full')
    else
      let key = s:demo.seq[s:demo.seq_i][s:demo.i]
      call feedkeys(key, 't')
      let s:demo.i += 1
      if s:demo.i >= len(s:demo.seq[s:demo.seq_i])
        let s:demo.i = 0
        let s:demo.seq_i += 1
      endif
    endif
  endif

  let delay = 80

  if has_key(s:demo.config, 'pause')
    let delay = s:demo.config.pause
    call remove(s:demo.config, 'pause')
  elseif has_key(s:demo.config, 'key_delay')
    let kd = s:demo.config.key_delay
    if type(kd) == type([])
      if len(kd) > 1
        let delay = s:randrange(kd[0], kd[1])
      else
        let delay = kd[0]
      endif
    elseif type(kd) == type(0)
      let delay = kd
    endif
  endif

  if !delay
    return s:demo_tick()
  endif

  let s:timer = timer_start(delay, 's:demo_tick')
endfunction


" Reset the state
function! s:reset() abort
  " Press escape a lot and clear command line.
  execute "normal! \<esc>\<esc>\<esc>:"
endfunction


" Parse a config line.
" TODO: Allow multiple config directives per line.
function! s:parse_config_line(line) abort
  let config = {}
  let name = matchstr(a:line, '\S\+')
  if empty(name)
    return config
  endif

  let args = matchstr(a:line, '\s\+\zs.*')
  " Explicitly match the names so that unknown configs are effectively
  " comments.
  if name ==# 'pause'
    let config['pause'] = empty(args) ? 1000 : str2nr(args)
  elseif name ==# 'execute' && !empty(args)
    let config['execute'] = args
  elseif name ==# 'key_delay'
    let delay = map(split(args), 'str2nr(v:val)')
    let config[name] = len(delay) == 1 ? delay[0] : delay
  elseif name ==# 'feed_full'
    let config[name] = 1
  endif

  return config
endfunction


" Parse a demo file.
function! s:parse_demo_file(filename) abort
  if !filereadable(a:filename)
    echohl ErrorMsg
    echo "Demo file doesn't exist:" a:filename
    echohl None
    return {}
  endif

  let lines = readfile(a:filename)
  let prepend_next = ''
  let demo_seq = []

  for line in lines
    if empty(line)
      continue
    endif

    if line =~# '^##'
      let c = s:parse_config_line(line[3:])
      if !empty(c)
        call add(demo_seq, c)
      endif
    else
      " Separate special key notation (e.g. \<cr>).  Special keys are treated
      " differently since some can expand into more than one character.
      let parts = split(line, '\\<[^>]\+>\zs')
      for p in parts
        if !empty(prepend_next)
          let p = prepend_next.p
          let prepend_next = ''
        endif

        let key = matchstr(p, '\\<[^>]\+>$')
        if !empty(key)
          let p = p[:-len(key)-1]
          let key = key[2:-2]
          if key =~? 'leader'
            " Leader key needs to be prepended to the next key.
            let prepend_next = get(g:, 'map'.tolower(key), '\')
            let key = ''
          else
            let key = eval('"\<'.key.'>"')
          endif
        endif

        if !empty(p)
          let p = substitute(p, '\\\\\(.\)', '\=eval(''"\''.submatch(1).''"'')', 'g')
          let p = substitute(p, '\\\(.\)', '\1', 'g')
          call add(demo_seq, p)
        endif

        if !empty(key)
          call add(demo_seq, {'feed_full': 1})
          call add(demo_seq, key)
        endif
      endfor
    endif
  endfor

  return extend(copy(s:demo_pre), demo_seq)
endfunction


" Try to stop the demo.
function! haunted#cancel() abort
  if !empty(s:demo)
    echohl ErrorMsg
    echo 'Demo canceled'
    echohl None
  endif

  let s:demo = {}
  if s:timer
    call timer_stop(s:timer)
    let s:timer = 0
  endif

  return ''
endfunction


" Run a demo file.
function! haunted#run(filename) abort
  let s:demo = copy(s:demo_boilerplate)
  let s:demo.seq = s:parse_demo_file(a:filename)
  if empty(s:demo.seq)
    return
  endif

  call s:reset()
  call s:demo_tick()
endfunction
