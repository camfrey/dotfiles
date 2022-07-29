set autoindent              " indent a new line the same amount as the line just typed
set number                  " add line numbers
syntax on                   " syntax highlighting
filetype plugin indent on   " show existing tab with 4 spaces width
set tabstop=4               "when indenting with '>', use 4 spaces width
set shiftwidth=4	        " On pressing tab, insert 4 spaces 
set expandtab

call plug#begin()

Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'jiangmiao/auto-pairs'
Plug 'preservim/nerdcommenter'
Plug 'tpope/vim-fugitive'

call plug#end()
