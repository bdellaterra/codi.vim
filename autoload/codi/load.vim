" Default interpreters
let s:codi_default_interpreters = {
      \ 'python': {
          \ 'bin': 'python',
          \ 'prompt': '^(>>>|\.\.\.) ',
          \ },
      \ 'javascript': {
          \ 'bin': 'node',
          \ 'deps': ['sed'],
          \ 'env': 'NODE_DISABLE_COLORS=1',
          \ 'prompt': '^(>|\.\.\.+) ',
          \ 'preprocess': 'sed "s/...//g"',
          \ },
      \ 'haskell': {
          \ 'bin': 'ghci',
          \ 'deps': ['sed', 'tr', 'cut'],
          \ 'prompt': '^Prelude> ',
          \ 'preprocess':
            \ 'sed "s/\(\[?1[hl]\|E\)//g" | tr "" "\n" | cut -c2-',
          \ },
      \ 'ruby': {
          \ 'bin': 'irb',
          \ 'deps': ['sed'],
          \ 'prompt': '^irb\([_a-zA-Z0-9]+\):[0-9]+:[0-9]+. ',
          \ 'preprocess': 'sed "s/^=> //g"',
          \ },
      \ }
function! codi#load#interpreters()
  return extend(s:codi_default_interpreters, g:codi#interpreters)
endfunction

" Default aliases
let s:codi_default_aliases = {
      \ 'javascript.jsx': 'javascript',
      \ }
function! codi#load#aliases()
  return extend(s:codi_default_aliases, g:codi#aliases)
endfunction
