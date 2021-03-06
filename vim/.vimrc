" Destination path ~/.vimrc

set term=xterm-256color
set nocompatible

set number
set relativenumber

set encoding=UTF-8

" Status line
set laststatus=2
set statusline=[%n]\ %<%f%h%m
set shortmess-=S

" Tabs
set tabstop=2
set shiftwidth=2
set softtabstop=2

" Indent
set expandtab
set autoindent
set smartindent

" History
set noswapfile
set undodir=~/.vim/undodir
set undofile

" 
set incsearch

"
set signcolumn=auto

"
set mouse=a

" Plugins setup using vim-plug https://github.com/junegunn/vim-plug
call plug#begin('~/.vim/plugged')
Plug 'gruvbox-community/gruvbox'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
call plug#end()

" Theming
set bg=dark
colorscheme gruvbox

set t_ut=

" Set the <leader> var to white-space
let mapleader = " "

" Remaps
noremap <Up>    <Nop>
noremap <Down>  <Nop>
noremap <Left>  <Nop>
noremap <Right> <Nop>

" Maping
vnoremap <C-c> "+y
nnoremap <C-v> "+p

" Nerd Tree Mapping
nnoremap <leader>n :NERDTreeFocus<CR>
nnoremap <C-t> :NERDTreeToggle<CR>

" WSL yank support
let s:clip = '/mnt/c/Windows/System32/clip.exe'  " change this path according to your mount point
if executable(s:clip)
  augroup WSLYank
    autocmd!
      autocmd TextYankPost * if v:event.operator ==# 'y' | call system(s:clip, @0) | endif
        augroup END
endif
