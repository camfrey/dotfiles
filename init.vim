set autoindent              " indent a new line the same amount as the line just typed
set number                  " add line numbers
syntax on                   " syntax highlighting

call plug#begin()

Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'jiangmiao/auto-pairs'
Plug 'preservim/nerdcommenter'
Plug 'tpope/vim-fugitive'

call plug#end()
