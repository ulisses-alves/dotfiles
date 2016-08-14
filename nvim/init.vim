call plug#begin()

Plug 'flazz/vim-colorschemes'
Plug 'chriskempson/vim-tomorrow-theme'
Plug 'chriskempson/base16-vim'
Plug 'atelierbram/vim-colors_atelier-schemes'
Plug 'morhetz/gruvbox'
Plug 'kien/ctrlp.vim'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

call plug#end()

source $HOME/.config/nvim/ctrlp.vim
source $HOME/.config/nvim/airlines.vim
source $HOME/.config/nvim/mappings.vim

set number
set hidden
set autoindent

set tabstop=8
set expandtab
set softtabstop=4
set shiftwidth=4
set shiftround

set termguicolors
set background=dark

colorscheme gruvbox
