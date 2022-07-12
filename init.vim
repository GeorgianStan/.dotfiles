"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => General Settings
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set number relativenumber  " Display line numbers
set clipboard=unnamedplus " Copy/paste between vim and other programs.
set t_Co=256 " Set if term supports 256 colors.
set clipboard=unnamedplus       " Copy/paste betwen vim and other programs.
set mouse=a " Enable Mouse
set nobackup                    " No auto backups
set noswapfile                  " No swap
filetype plugin indent on

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Status Line
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set laststatus=2
set statusline=[%n]\ %<%f%h%m
set shortmess-=S

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Text, tab and indent related
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set tabstop=2
set shiftwidth=2
set softtabstop=2

set expandtab
set smartindent


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Maping, Remaps and Leader
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Set the <leader> var to white-space
let g:mapleader = " "

" Maping
vnoremap <C-c> "+y
nnoremap <C-v> "+p

" Remaps
noremap <Up>    <Nop>
noremap <Down>  <Nop>
noremap <Left>  <Nop>
noremap <Right> <Nop>

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Plugins - using vim-plug https://github.com/junegunn/vim-plug
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
call plug#begin('~/.vim/plugged')
Plug 'gruvbox-community/gruvbox'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'tpope/vim-fugitive'
call plug#end()

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Theming
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set bg=dark
colorscheme gruvbox
