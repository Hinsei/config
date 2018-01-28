set runtimepath^=~/.vim runtimepath+=~/.vim/after
let &packpath = &runtimepath
source ~/.vimrc

" Remaps esc key to jk combo 
inoremap jk <Esc>

" Remaps exit terminal key to jk combo
tnoremap jk <C-\><C-n>

" Set line number
set number

" Tab config
set expandtab
set shiftwidth=2
set softtabstop=2

" Map the leader key to space
let mapleader="\<SPACE>"

" FzF ack config
let $FZF_DEFAULT_COMMAND="ack -l ''"

nnoremap <C-P> :FZF<CR>

call plug#begin()
  Plug 'elixir-editors/vim-elixir'
  Plug 'vim-airline/vim-airline'
  Plug 'vim-airline/vim-airline-themes'
  Plug 'pangloss/vim-javascript'
  Plug 'junegunn/fzf', {'dir': '~/.fzf', 'do': './install --all'}
  Plug 'junegunn/fzf.vim'
  Plug 'godlygeek/tabular'
  Plug 'rgrinberg/vim-ocaml'
  Plug 'wlangstroth/vim-racket'
  Plug 'leafgarland/typescript-vim'
call plug#end()
