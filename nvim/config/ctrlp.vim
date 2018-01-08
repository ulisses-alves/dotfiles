let g:ctrlp_user_command = ['.git', 'cd %s && git ls-files -co --exclude-standard']
let g:ctrlp_working_path_mode = 'ra'

let g:ctrlp_prompt_mappings = {
  \ 'PrtSelectMove("j")': ['<c-k>', '<down>'],
  \ 'PrtSelectMove("k")': ['<c-l>', '<up>'],
  \ 'PrtCurLeft()':       ['<c-j>', '<left>', '<c-^>'],
  \ 'PrtCurRight()':      ['<c-;>', '<right>'],
  \ }

set wildignore+=*/tmp/*,*.so,*.swp,*.zip,*.png,*.jpg,*.jpeg,*.gif,*.svg

let g:ctrlp_custom_ignore = {
  \ 'dir':  '\v[\/](\.(git|hg|svn))$',
  \ 'file': '\v\.(exe|so|dll)$',
  \ }
