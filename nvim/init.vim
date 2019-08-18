call plug#begin('~/.config/nvim/plugged')

Plug 'cocopon/pgmnt.vim'
Plug 'cocopon/iceberg.vim'
Plug 'arcticicestudio/nord-vim'
Plug 'Valloric/YouCompleteMe'

call plug#end()

autocmd BufReadPost *.rs setlocal filetype=rust

" Required for operations modifying multiple buffers like rename.
set hidden

set number
colorscheme nord
