call plug#begin()
Plug 'sonph/onehalf', { 'rtp': 'vim' }
call plug#end()

syntax on
set t_Co=256
set cursorline
colorscheme onehalfdark
let g:airline_theme='onehalfdark'
" lightline
" let g:lightline = { 'colorscheme': 'onehalfdark' }

command R !./%

set autoindent
