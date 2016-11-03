if exists('b:current_syntax')
  finish
endif

let b:current_syntax = 'haunted'

syntax region hauntDirectiveLine start="^##" end="$" oneline extend skipempty contains=hauntDirective,hauntErr
syntax keyword hauntDirective contained execute pause key_delay key_echo feed_full show_keys
syntax match hauntComment '^### .*$'
syntax match hauntKey '\\\%(<[^>]\+>\|\\.\)'

highlight default link hauntDirectiveLine PreProc
highlight default link hauntDirective Keyword
highlight default link hauntKey Special
highlight default link hauntComment Comment
