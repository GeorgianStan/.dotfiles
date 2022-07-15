
" => General Settings
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set number relativenumber  " Display line numbers
set t_Co=256 " Set if term supports 256 colors.

set clipboard=unnamedplus       " Copy/paste betwen vim and other programs.
set mouse=a " Enable Mouse

set hidden " navigate buffers without losing unsaved work

set undodir=~/.nvim/undodir
set undofile " save undo history
set noswapfile

set noshowmode
set signcolumn=auto


set scrolloff=8
set nowrap
set cursorline

set completeopt=menuone,noselect " for autocompletion

set updatetime=1000 

set splitbelow " force all horizontal splits to go below current window
set splitright " all vertical splits to go to the right of current window

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
" set the <leader> var to white-space
noremap <Space> <Nop>
let g:mapleader = " "

" run the format command :lua vim.lsp.buf.formatting()
nnoremap <silent> <leader>f :Format<CR>

" copy & paste - C stands for CTRL
vnoremap <C-c> "+y
nnoremap <C-v> "+p

" disable arrow navigation
noremap <Up>    <Nop>
noremap <Down>  <Nop>
noremap <Left>  <Nop>
noremap <Right> <Nop>

" splits navigation
nnoremap <silent> <C-h> <C-w>h
nnoremap <silent> <C-j> <C-w>j
nnoremap <silent> <C-k> <C-w>k
nnoremap <silent> <C-l> <C-w>l

" resizing splits
noremap <silent> <C-Left> :vertical resize -3<CR>
noremap <silent> <C-Right> :vertical resize +3<CR>
noremap <silent> <C-Up> :resize +3<CR>
noremap <silent> <C-Down> :resize -3<CR>

" naviate buffers - S stand for Shift
noremap <silent> <S-l> :bnext <CR>
noremap <silent> <S-h> :bprevious <CR>

" stay in indent mode
vnoremap <silent> < <gv
vnoremap <silent> > >gv

" move text up and down - A stands for ALT
nnoremap <silent> <A-j> :m .+1<CR>==
nnoremap <silent> <A-k> :m .-2<CR>==
inoremap <silent> <A-j> <Esc>:m .+1<CR>==gi
inoremap <silent> <A-k> <Esc>:m .-2<CR>==gi
vnoremap <silent> <A-j> :m '>+1<CR>gv=gv
vnoremap <silent> <A-k> :m '<-2<CR>gv=gv

" keep the yanked value in register after it was copied on top of another work
vnoremap <silent> p "_dp

" Plugin remaps
" telescope 
nnoremap <leader>p :Telescope find_files<CR>

" bufferline
 nnoremap <silent> bp :BufferLinePick<CR>
 nnoremap <silent> bc :BufferLinePickClose<CR>

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Plugins - using vim-plug https://github.com/junegunn/vim-plug
" Run :PlugInstall to install the plugins
" To remove a plugin, simply comment it or remove it form this declaration list and then run :PlugClean
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
call plug#begin('~/.config/nvim/plugged')
"Plug 'gruvbox-community/gruvbox'
" theming and user experience
Plug 'sainnhe/gruvbox-material'

" git
Plug 'tpope/vim-fugitive'
Plug 'lewis6991/gitsigns.nvim'

" telescope plugin and dependencies
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'

" improved coding experience
" enable LSP
Plug 'neovim/nvim-lspconfig'

" autocompletion
Plug 'hrsh7th/nvim-cmp'
"Plug 'hrsh7th/cmp-buffer'
"Plug 'hrsh7th/cmp-path'
"Plug 'hrsh7th/cmp-cmdline'
Plug 'saadparwaiz1/cmp_luasnip'
Plug 'hrsh7th/cmp-nvim-lsp'

" snippets
Plug 'L3MON4D3/LuaSnip'
Plug 'rafamadriz/friendly-snippets'

" treesitter - for improved syntax highlighting
Plug 'nvim-treesitter/nvim-treesitter', { 'do': ':TSUpdate' }
Plug 'p00f/nvim-ts-rainbow' "rainbow brackets

Plug 'windwp/nvim-autopairs' "automatically close brackets and other pairs

" comments
Plug 'numToStr/Comment.nvim'

" file explorer
Plug 'kyazdani42/nvim-web-devicons' " optional, for file icons
Plug 'kyazdani42/nvim-tree.lua'

" top buffer line
Plug 'akinsho/bufferline.nvim', { 'tag': 'v2.*' }
Plug 'moll/vim-bbye'

" formatting & linting
Plug 'jose-elias-alvarez/null-ls.nvim'

" status line
Plug 'nvim-lualine/lualine.nvim'

"  
Plug 'lukas-reineke/indent-blankline.nvim' 
Plug 'norcalli/nvim-colorizer.lua'
call plug#end()

" Require Plugins configs - georgian is the namespace specified inside
" ~/.confing/nvim/lua
lua require('georgian')

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Theming
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set termguicolors

set bg=dark

" gruvbox
" colorscheme gruvbox

" gruvbox-material

" This configuration option should be placed before `colorscheme gruvbox-material`.
" Available values: 'hard', 'medium'(default), 'soft'
let g:gruvbox_material_background = 'medium'

" For better performance
let g:gruvbox_material_better_performance = 1

colorscheme gruvbox-material
