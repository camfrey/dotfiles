" General options
set autoindent              " indent a new line the same amount as the line just typed
set number                  " add line numbers
syntax on                   " syntax highlighting
filetype plugin indent on   " show existing tab with 4 spaces width
set tabstop=4               " when indenting with '>', use 4 spaces width
set shiftwidth=4	        " On pressing tab, insert 4 spaces 
set expandtab

" Key remapping

inoremap { {<CR><BS>}<Esc>O
inoremap \{ {

inoremap <S-Tab> <Esc>      " Use shift tab instead of escape
onoremap <S-Tab> <Esc>

imap <Up>    <Nop>          " Use control and hjkl for movement in insert mode
imap <Down>  <Nop>
imap <Left>  <Nop>
imap <Right> <Nop>

inoremap <C-k> <Up>
inoremap <C-j> <Down>
inoremap <C-h> <Left>
inoremap <C-l> <Right>

nmap <Up>    <Nop>
nmap <Down>  <Nop>
nmap <Left>  <Nop>
nmap <Right> <Nop>

map $ <Nop>
map ^ <Nop>
map { <Nop>
map } <Nop>

noremap K     {
noremap J     }
noremap H     ^
noremap L     $

call plug#begin()

Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'jiangmiao/auto-pairs'
Plug 'preservim/nerdcommenter'
Plug 'tpope/vim-fugitive'

call plug#end()
