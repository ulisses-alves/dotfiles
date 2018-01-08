let g:jsx_ext_required=0

source $HOME/.config/nvim/config/plug.vim
source $HOME/.config/nvim/config/ctrlp.vim
source $HOME/.config/nvim/config/airlines.vim
source $HOME/.config/nvim/config/mappings.vim
source $HOME/.config/nvim/config/syntastic.vim
source $HOME/.config/nvim/config/elm.vim

set number
set hidden
set autoindent

set tabstop=2
set expandtab
set softtabstop=2
set shiftwidth=2
set shiftround

set backupcopy=yes

set termguicolors
set background=dark

silent! colorscheme gruvbox

fun! <SID>StripTrailingWhitespaces()
    let l = line(".")
    let c = col(".")
    %s/\s\+$//e
    call cursor(l, c)
endfun

autocmd FileType * autocmd BufWritePre <buffer> :call <SID>StripTrailingWhitespaces()

