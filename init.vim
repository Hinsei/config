set runtimepath^=~/.vim runtimepath+=~/.vim/after
let &packpath = &runtimepath
source ~/.vimrc

" Change cursor to underline
set guicursor+=n:hor20-Cursor/lCursor-blinkwait300-blinkon200-blinkoff150

" Change matching brackets color
highlight MatchParen ctermbg=White ctermfg=black


" Remaps esc key to jk combo 
inoremap jk <Esc>

" Braces AutoComplete
inoremap { {}<left>
inoremap {{ {
inoremap {} {}
inoremap ( ()<left>
inoremap (( (
inoremap () ()
inoremap [ []<left>
inoremap [[ [
inoremap [] []
inoremap " ""<left>
inoremap "" ""
inoremap ' ''<left>
inoremap '' ''


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

let g:python_host_prog = '/usr/bin/python'
let g:python3_host_prog = '/usr/bin/python3'

" Any fold config
filetype plugin indent on
syntax on
autocmd Filetype * AnyFoldActivate
set foldlevel=0
highlight Folded ctermbg=White ctermfg=Black

" ocp-indent
autocmd FileType ocaml source /home/aiman/.opam/default/share/ocp-indent/vim/indent/ocaml.vim

call plug#begin()
  Plug 'elixir-editors/vim-elixir'
  Plug 'vim-airline/vim-airline'
  Plug 'vim-airline/vim-airline-themes'
  Plug 'pangloss/vim-javascript'
  Plug 'mxw/vim-jsx'
  Plug 'junegunn/fzf', {'dir': '~/.fzf', 'do': './install --all'}
  Plug 'junegunn/fzf.vim'
  Plug 'godlygeek/tabular'
  Plug 'wlangstroth/vim-racket'
  Plug 'leafgarland/typescript-vim'
  Plug 'fsharp/vim-fsharp', {
      \ 'for': 'fsharp',
      \ 'do':  'make fsautocomplete',
      \}
  Plug 'davidhalter/jedi-vim'
  Plug 'scrooloose/nerdcommenter'
  Plug 'tomlion/vim-solidity'
  Plug 'pseewald/vim-anyfold'
  Plug 'posva/vim-vue'
  Plug 'dart-lang/dart-vim-plugin'
call plug#end()
