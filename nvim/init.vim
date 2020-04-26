call plug#begin('~/.config/nvim/plugged')

Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
Plug 'milkypostman/vim-togglelist'
Plug 'racer-rust/vim-racer'
Plug 'arcticicestudio/nord-vim'
Plug 'neomake/neomake'
Plug 'neoclide/coc.nvim', {'do': 'yarn install --frozen-lockfile'}
"Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }

call plug#end()

set cmdheight=2
set hidden

call neomake#configure#automake('w')

tnoremap <Esc> <C-\><C-n>
let mapleader = ","
let g:deoplete#enable_at_startup = 1
let g:racer_cmd = "~/.cargo/bin/racer"
let g:racer_experimental_completer = 1
let g:racer_insert_paren = 1

" Use tab for trigger completion with characters ahead and navigate.
" NOTE: Use command ':verbose imap <tab>' to make sure tab is not mapped by
" other plugin before putting this into your config.
inoremap <silent><expr> <TAB>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<TAB>" :
      \ coc#refresh()
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"

function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

noremap <leader>y :%y+<CR>
noremap <leader>z :Files<CR>
noremap <leader>a :bprevious<CR>
noremap <leader>s :bnext<CR>
noremap q :w <CR>
"noremap w :wq <CR>
noremap Z :!cargo run<CR>
