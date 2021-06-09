set nocompatible
call plug#begin()
Plug 'preservim/nerdtree'
Plug 'joshdick/onedark.vim'
" Plug 'sonph/onehalf', { 'rtp': 'vim' }
Plug 'itchyny/lightline.vim'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'tomtom/tcomment_vim'
Plug 'neoclide/coc.nvim'
Plug 'sheerun/vim-polyglot'
Plug 'Vimjas/vim-python-pep8-indent'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'morhetz/gruvbox'
Plug 'instant-markdown/vim-instant-markdown', {'for': 'markdown'}
call plug#end()

syntax on
colorscheme gruvbox 
autocmd vimenter * ++nested colorscheme gruvbox
set t_Co=256
set cursorline
set bg=dark
" colorscheme onehalfdark
" let g:airline_theme='onehalfdark'
" lightline
" let g:lightline = { 'colorscheme': 'onehalfdark' }

command R !./%

set autoindent
set number
set laststatus=2
set hlsearch

let g:python_highlight_all = 1

" use <tab> for trigger completion and navigate to the next complete item
function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~ '\s'
endfunction

inoremap <silent><expr> <Tab>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<Tab>" :
      \ coc#refresh()

if has("autocmd")
    au BufReadPost * if line("'\"") > 0 && line("'\"") <= line("$") | exe "normal! g`\"" | endif
  endif

filetype plugin on

noremap <Up> <NOP>
noremap <Down> <NOP>
noremap <Left> <NOP>
noremap <Right> <NOP>

:command WQ wq
:command Wq wq
:command W w
:command Q q

if has("autocmd")
    au VimEnter,InsertLeave * silent execute '!echo -ne "\e[2 q"' | redraw!
      au InsertEnter,InsertChange *
          \ if v:insertmode == 'i' | 
          \   silent execute '!echo -ne "\e[6 q"' | redraw! |
          \ elseif v:insertmode == 'r' |
          \   silent execute '!echo -ne "\e[4 q"' | redraw! |
          \ endif
        au VimLeave * silent execute '!echo -ne "\e[ q"' | redraw!
      endif



