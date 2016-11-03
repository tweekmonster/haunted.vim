let s:codes = {
\    '32': [
\      '  ',
\      '  ',
\      '  ',
\      '  ',
\      '  ',
\      '  ',
\      '  ',
\      '  ',
\    ],
\    '33': [
\      '  ',
\      '█ ',
\      '█ ',
\      '█ ',
\      '  ',
\      '█ ',
\      '  ',
\      '  ',
\    ],
\    '34': [
\      '█ █ ',
\      '█ █ ',
\      '    ',
\      '    ',
\      '    ',
\      '    ',
\      '    ',
\      '    ',
\    ],
\    '35': [
\      '      ',
\      '  █ █ ',
\      ' █ █  ',
\      '█████ ',
\      ' █ █  ',
\      '█ █   ',
\      '      ',
\      '      ',
\    ],
\    '36': [
\      '     ',
\      ' █   ',
\      ' ███ ',
\      '██   ',
\      '  ██ ',
\      '███  ',
\      '  █  ',
\      '     ',
\    ],
\    '37': [
\      '    ',
\      '█ █ ',
\      '  █ ',
\      ' █  ',
\      '█   ',
\      '█ █ ',
\      '    ',
\      '    ',
\    ],
\    '38': [
\      '      ',
\      ' ██   ',
\      '█     ',
\      ' ██ █ ',
\      '█  █  ',
\      ' ██ █ ',
\      '      ',
\      '      ',
\    ],
\    '39': [
\      '█ ',
\      '█ ',
\      '  ',
\      '  ',
\      '  ',
\      '  ',
\      '  ',
\      '  ',
\    ],
\    '40': [
\      ' █ ',
\      '█  ',
\      '█  ',
\      '█  ',
\      '█  ',
\      '█  ',
\      ' █ ',
\      '   ',
\    ],
\    '41': [
\      '█  ',
\      ' █ ',
\      ' █ ',
\      ' █ ',
\      ' █ ',
\      ' █ ',
\      '█  ',
\      '   ',
\    ],
\    '42': [
\      '█ █ ',
\      ' █  ',
\      '█ █ ',
\      '    ',
\      '    ',
\      '    ',
\      '    ',
\      '    ',
\    ],
\    '43': [
\      '    ',
\      '    ',
\      ' █  ',
\      '███ ',
\      ' █  ',
\      '    ',
\      '    ',
\      '    ',
\    ],
\    '44': [
\      '   ',
\      '   ',
\      '   ',
\      '   ',
\      '   ',
\      ' █ ',
\      '█  ',
\      '   ',
\    ],
\    '45': [
\      '    ',
\      '    ',
\      '    ',
\      '███ ',
\      '    ',
\      '    ',
\      '    ',
\      '    ',
\    ],
\    '46': [
\      '  ',
\      '  ',
\      '  ',
\      '  ',
\      '  ',
\      '█ ',
\      '  ',
\      '  ',
\    ],
\    '47': [
\      '    ',
\      '  █ ',
\      '  █ ',
\      ' █  ',
\      '█   ',
\      '█   ',
\      '    ',
\      '    ',
\    ],
\    '48': [
\      '     ',
\      ' ██  ',
\      '█  █ ',
\      '█  █ ',
\      '█  █ ',
\      ' ██  ',
\      '     ',
\      '     ',
\    ],
\    '49': [
\      '   ',
\      ' █ ',
\      '██ ',
\      ' █ ',
\      ' █ ',
\      ' █ ',
\      '   ',
\      '   ',
\    ],
\    '50': [
\      '     ',
\      ' ██  ',
\      '█  █ ',
\      '  █  ',
\      ' █   ',
\      '████ ',
\      '     ',
\      '     ',
\    ],
\    '51': [
\      '     ',
\      '███  ',
\      '   █ ',
\      ' ███ ',
\      '   █ ',
\      '███  ',
\      '     ',
\      '     ',
\    ],
\    '52': [
\      '     ',
\      '  █  ',
\      ' ██  ',
\      '█ █  ',
\      '████ ',
\      '  █  ',
\      '     ',
\      '     ',
\    ],
\    '53': [
\      '     ',
\      '████ ',
\      '█    ',
\      '███  ',
\      '   █ ',
\      '███  ',
\      '     ',
\      '     ',
\    ],
\    '54': [
\      '     ',
\      ' ██  ',
\      '█    ',
\      '███  ',
\      '█  █ ',
\      ' ██  ',
\      '     ',
\      '     ',
\    ],
\    '55': [
\      '     ',
\      '████ ',
\      '   █ ',
\      '  █  ',
\      ' █   ',
\      ' █   ',
\      '     ',
\      '     ',
\    ],
\    '56': [
\      '     ',
\      ' ██  ',
\      '█  █ ',
\      ' ██  ',
\      '█  █ ',
\      ' ██  ',
\      '     ',
\      '     ',
\    ],
\    '57': [
\      '     ',
\      ' ██  ',
\      '█  █ ',
\      ' ███ ',
\      '   █ ',
\      ' ██  ',
\      '     ',
\      '     ',
\    ],
\    '58': [
\      '  ',
\      '  ',
\      '  ',
\      '█ ',
\      '  ',
\      '█ ',
\      '  ',
\      '  ',
\    ],
\    '59': [
\      '   ',
\      '   ',
\      '   ',
\      ' █ ',
\      '   ',
\      ' █ ',
\      '█  ',
\      '   ',
\    ],
\    '60': [
\      '   ',
\      '   ',
\      ' █ ',
\      '█  ',
\      ' █ ',
\      '   ',
\      '   ',
\      '   ',
\    ],
\    '61': [
\      '     ',
\      '     ',
\      '████ ',
\      '     ',
\      '████ ',
\      '     ',
\      '     ',
\      '     ',
\    ],
\    '62': [
\      '   ',
\      '   ',
\      '█  ',
\      ' █ ',
\      '█  ',
\      '   ',
\      '   ',
\      '   ',
\    ],
\    '63': [
\      '     ',
\      '███  ',
\      '   █ ',
\      ' ██  ',
\      '     ',
\      ' █   ',
\      '     ',
\      '     ',
\    ],
\    '64': [
\      '  ████  ',
\      ' █    █ ',
\      '█  ██ █ ',
\      '█ █ █ █ ',
\      '█  ███  ',
\      ' █      ',
\      '  ████  ',
\      '        ',
\    ],
\    '65': [
\      '     ',
\      ' ██  ',
\      '█  █ ',
\      '████ ',
\      '█  █ ',
\      '█  █ ',
\      '     ',
\      '     ',
\    ],
\    '66': [
\      '     ',
\      '███  ',
\      '█  █ ',
\      '███  ',
\      '█  █ ',
\      '███  ',
\      '     ',
\      '     ',
\    ],
\    '67': [
\      '    ',
\      ' ██ ',
\      '█   ',
\      '█   ',
\      '█   ',
\      ' ██ ',
\      '    ',
\      '    ',
\    ],
\    '68': [
\      '     ',
\      '███  ',
\      '█  █ ',
\      '█  █ ',
\      '█  █ ',
\      '███  ',
\      '     ',
\      '     ',
\    ],
\    '69': [
\      '    ',
\      '███ ',
\      '█   ',
\      '██  ',
\      '█   ',
\      '███ ',
\      '    ',
\      '    ',
\    ],
\    '70': [
\      '    ',
\      '███ ',
\      '█   ',
\      '███ ',
\      '█   ',
\      '█   ',
\      '    ',
\      '    ',
\    ],
\    '71': [
\      '     ',
\      ' ███ ',
\      '█    ',
\      '█ ██ ',
\      '█  █ ',
\      ' ███ ',
\      '     ',
\      '     ',
\    ],
\    '72': [
\      '     ',
\      '█  █ ',
\      '█  █ ',
\      '████ ',
\      '█  █ ',
\      '█  █ ',
\      '     ',
\      '     ',
\    ],
\    '73': [
\      '    ',
\      '███ ',
\      ' █  ',
\      ' █  ',
\      ' █  ',
\      '███ ',
\      '    ',
\      '    ',
\    ],
\    '74': [
\      '     ',
\      ' ███ ',
\      '   █ ',
\      '   █ ',
\      '█  █ ',
\      ' ██  ',
\      '     ',
\      '     ',
\    ],
\    '75': [
\      '     ',
\      '█  █ ',
\      '█ █  ',
\      '██   ',
\      '█ █  ',
\      '█  █ ',
\      '     ',
\      '     ',
\    ],
\    '76': [
\      '    ',
\      '█   ',
\      '█   ',
\      '█   ',
\      '█   ',
\      '███ ',
\      '    ',
\      '    ',
\    ],
\    '77': [
\      '      ',
\      '█   █ ',
\      '██ ██ ',
\      '█ █ █ ',
\      '█   █ ',
\      '█   █ ',
\      '      ',
\      '      ',
\    ],
\    '78': [
\      '     ',
\      '█  █ ',
\      '██ █ ',
\      '█ ██ ',
\      '█  █ ',
\      '█  █ ',
\      '     ',
\      '     ',
\    ],
\    '79': [
\      '     ',
\      ' ██  ',
\      '█  █ ',
\      '█  █ ',
\      '█  █ ',
\      ' ██  ',
\      '     ',
\      '     ',
\    ],
\    '80': [
\      '     ',
\      '███  ',
\      '█  █ ',
\      '███  ',
\      '█    ',
\      '█    ',
\      '     ',
\      '     ',
\    ],
\    '81': [
\      '     ',
\      ' ██  ',
\      '█  █ ',
\      '█  █ ',
\      '█  █ ',
\      ' ██  ',
\      '   █ ',
\      '     ',
\    ],
\    '82': [
\      '     ',
\      '███  ',
\      '█  █ ',
\      '█  █ ',
\      '███  ',
\      '█  █ ',
\      '     ',
\      '     ',
\    ],
\    '83': [
\      '     ',
\      ' ███ ',
\      '█    ',
\      ' ██  ',
\      '   █ ',
\      '███  ',
\      '     ',
\      '     ',
\    ],
\    '84': [
\      '    ',
\      '███ ',
\      ' █  ',
\      ' █  ',
\      ' █  ',
\      ' █  ',
\      '    ',
\      '    ',
\    ],
\    '85': [
\      '     ',
\      '█  █ ',
\      '█  █ ',
\      '█  █ ',
\      '█  █ ',
\      ' ██  ',
\      '     ',
\      '     ',
\    ],
\    '86': [
\      '     ',
\      '█  █ ',
\      '█  █ ',
\      '█ █  ',
\      '█ █  ',
\      ' █   ',
\      '     ',
\      '     ',
\    ],
\    '87': [
\      '      ',
\      '█   █ ',
\      '█   █ ',
\      '█ █ █ ',
\      '█ █ █ ',
\      ' █ █  ',
\      '      ',
\      '      ',
\    ],
\    '88': [
\      '     ',
\      '█  █ ',
\      '█  █ ',
\      ' ██  ',
\      '█  █ ',
\      '█  █ ',
\      '     ',
\      '     ',
\    ],
\    '89': [
\      '     ',
\      '█  █ ',
\      '█  █ ',
\      ' ███ ',
\      '   █ ',
\      ' ██  ',
\      '     ',
\      '     ',
\    ],
\    '90': [
\      '    ',
\      '███ ',
\      '  █ ',
\      ' █  ',
\      '█   ',
\      '███ ',
\      '    ',
\      '    ',
\    ],
\    '91': [
\      '   ',
\      '██ ',
\      '█  ',
\      '█  ',
\      '█  ',
\      '█  ',
\      '██ ',
\      '   ',
\    ],
\    '92': [
\      '    ',
\      '█   ',
\      '█   ',
\      ' █  ',
\      '  █ ',
\      '  █ ',
\      '    ',
\      '    ',
\    ],
\    '93': [
\      '   ',
\      '██ ',
\      ' █ ',
\      ' █ ',
\      ' █ ',
\      ' █ ',
\      '██ ',
\      '   ',
\    ],
\    '94': [
\      '    ',
\      ' █  ',
\      '█ █ ',
\      '    ',
\      '    ',
\      '    ',
\      '    ',
\      '    ',
\    ],
\    '95': [
\      '      ',
\      '      ',
\      '      ',
\      '      ',
\      '      ',
\      '      ',
\      '█████ ',
\      '      ',
\    ],
\    '96': [
\      '   ',
\      '█  ',
\      ' █ ',
\      '   ',
\      '   ',
\      '   ',
\      '   ',
\      '   ',
\    ],
\    '97': [
\      '     ',
\      '     ',
\      ' ███ ',
\      '█  █ ',
\      '█  █ ',
\      ' ███ ',
\      '     ',
\      '     ',
\    ],
\    '98': [
\      '     ',
\      '█    ',
\      '███  ',
\      '█  █ ',
\      '█  █ ',
\      '███  ',
\      '     ',
\      '     ',
\    ],
\    '99': [
\      '    ',
\      '    ',
\      ' ██ ',
\      '█   ',
\      '█   ',
\      ' ██ ',
\      '    ',
\      '    ',
\    ],
\    '100': [
\      '     ',
\      '   █ ',
\      ' ███ ',
\      '█  █ ',
\      '█  █ ',
\      ' ███ ',
\      '     ',
\      '     ',
\    ],
\    '101': [
\      '     ',
\      '     ',
\      ' ██  ',
\      '█ ██ ',
\      '██   ',
\      ' ██  ',
\      '     ',
\      '     ',
\    ],
\    '102': [
\      '    ',
\      ' ██ ',
\      ' █  ',
\      '███ ',
\      ' █  ',
\      ' █  ',
\      '    ',
\      '    ',
\    ],
\    '103': [
\      '     ',
\      '     ',
\      ' ███ ',
\      '█  █ ',
\      '█  █ ',
\      ' ███ ',
\      '   █ ',
\      ' ██  ',
\    ],
\    '104': [
\      '     ',
\      '█    ',
\      '███  ',
\      '█  █ ',
\      '█  █ ',
\      '█  █ ',
\      '     ',
\      '     ',
\    ],
\    '105': [
\      '  ',
\      '█ ',
\      '  ',
\      '█ ',
\      '█ ',
\      '█ ',
\      '  ',
\      '  ',
\    ],
\    '106': [
\      '   ',
\      ' █ ',
\      '   ',
\      ' █ ',
\      ' █ ',
\      ' █ ',
\      ' █ ',
\      '█  ',
\    ],
\    '107': [
\      '     ',
\      '█    ',
\      '█  █ ',
\      '█ █  ',
\      '███  ',
\      '█  █ ',
\      '     ',
\      '     ',
\    ],
\    '108': [
\      '  ',
\      '█ ',
\      '█ ',
\      '█ ',
\      '█ ',
\      '█ ',
\      '  ',
\      '  ',
\    ],
\    '109': [
\      '      ',
\      '      ',
\      '████  ',
\      '█ █ █ ',
\      '█ █ █ ',
\      '█ █ █ ',
\      '      ',
\      '      ',
\    ],
\    '110': [
\      '     ',
\      '     ',
\      '███  ',
\      '█  █ ',
\      '█  █ ',
\      '█  █ ',
\      '     ',
\      '     ',
\    ],
\    '111': [
\      '     ',
\      '     ',
\      ' ██  ',
\      '█  █ ',
\      '█  █ ',
\      ' ██  ',
\      '     ',
\      '     ',
\    ],
\    '112': [
\      '     ',
\      '     ',
\      '███  ',
\      '█  █ ',
\      '█  █ ',
\      '███  ',
\      '█    ',
\      '█    ',
\    ],
\    '113': [
\      '     ',
\      '     ',
\      ' ███ ',
\      '█  █ ',
\      '█  █ ',
\      ' ███ ',
\      '   █ ',
\      '   █ ',
\    ],
\    '114': [
\      '    ',
\      '    ',
\      '█ █ ',
\      '██  ',
\      '█   ',
\      '█   ',
\      '    ',
\      '    ',
\    ],
\    '115': [
\      '     ',
\      '     ',
\      ' ███ ',
\      '██   ',
\      '  ██ ',
\      '███  ',
\      '     ',
\      '     ',
\    ],
\    '116': [
\      '    ',
\      ' █  ',
\      '███ ',
\      ' █  ',
\      ' █  ',
\      ' ██ ',
\      '    ',
\      '    ',
\    ],
\    '117': [
\      '     ',
\      '     ',
\      '█  █ ',
\      '█  █ ',
\      '█  █ ',
\      ' ███ ',
\      '     ',
\      '     ',
\    ],
\    '118': [
\      '     ',
\      '     ',
\      '█  █ ',
\      '█  █ ',
\      '█ █  ',
\      ' █   ',
\      '     ',
\      '     ',
\    ],
\    '119': [
\      '      ',
\      '      ',
\      '█   █ ',
\      '█ █ █ ',
\      '█ █ █ ',
\      ' █ █  ',
\      '      ',
\      '      ',
\    ],
\    '120': [
\      '    ',
\      '    ',
\      '█ █ ',
\      ' █  ',
\      ' █  ',
\      '█ █ ',
\      '    ',
\      '    ',
\    ],
\    '121': [
\      '     ',
\      '     ',
\      '█  █ ',
\      '█  █ ',
\      '█  █ ',
\      ' ███ ',
\      '   █ ',
\      '███  ',
\    ],
\    '122': [
\      '     ',
\      '     ',
\      '████ ',
\      '  █  ',
\      ' █   ',
\      '████ ',
\      '     ',
\      '     ',
\    ],
\    '123': [
\      ' ██ ',
\      ' █  ',
\      ' █  ',
\      '█   ',
\      ' █  ',
\      ' █  ',
\      ' ██ ',
\      '    ',
\    ],
\    '124': [
\      '  ',
\      '█ ',
\      '█ ',
\      '█ ',
\      '█ ',
\      '█ ',
\      '  ',
\      '  ',
\    ],
\    '125': [
\      '██  ',
\      ' █  ',
\      ' █  ',
\      '  █ ',
\      ' █  ',
\      ' █  ',
\      '██  ',
\      '    ',
\    ],
\    '126': [
\      '      ',
\      '      ',
\      ' █  █ ',
\      '█ █ █ ',
\      '█  █  ',
\      '      ',
\      '      ',
\      '      ',
\    ],
\    '8592': [
\      '         ',
\      '  █      ',
\      ' █       ',
\      '████████ ',
\      ' █       ',
\      '  █      ',
\      '         ',
\      '         ',
\    ],
\    '8593': [
\      '  █   ',
\      ' ███  ',
\      '█ █ █ ',
\      '  █   ',
\      '  █   ',
\      '  █   ',
\      '  █   ',
\      '      ',
\    ],
\    '8594': [
\      '         ',
\      '     █   ',
\      '      █  ',
\      '████████ ',
\      '      █  ',
\      '     █   ',
\      '         ',
\      '         ',
\    ],
\    '8595': [
\      '  █   ',
\      '  █   ',
\      '  █   ',
\      '  █   ',
\      '  █   ',
\      '█ █ █ ',
\      ' ███  ',
\      '  █   ',
\    ],
\    '188': [
\      ' ██ ███ ',
\      '███ ███ ',
\      '███ ██  ',
\      '█     █ ',
\      ' ██ ███ ',
\      '███ ███ ',
\      '███ ██  ',
\      '█       ',
\    ],
\    '189': [
\      '   ██    ',
\      '  ████   ',
\      ' ██████  ',
\      '████████ ',
\      '  ████   ',
\      '  ████   ',
\      '  ████   ',
\      '         ',
\    ],
\    '208': [
\      '           ',
\      '           ',
\      '  █        ',
\      ' ██        ',
\      '██████████ ',
\      ' ██        ',
\      '  █        ',
\      '           ',
\    ],
\    '254': [
\      '           ',
\      '         █ ',
\      '  █      █ ',
\      ' ██      █ ',
\      '██████████ ',
\      ' ██        ',
\      '  █        ',
\      '           ',
\    ],
\  }


function! haunted#glyphs#get_char(c)
  if len(a:c) == 1
    let c = char2nr(a:c)
  else
    let c = a:c
  endif

  if has_key(s:codes, c)
    return s:codes[c]
  endif

  " ?
  return s:codes[63]
endfunction