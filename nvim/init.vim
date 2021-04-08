
" Standard stuff I want everywhere
set autoread
set cursorline
set noshowmode
set noswapfile
set scrolloff=2
set showmatch
set signcolumn=yes
set title
set undofile
set wildignorecase
set wildmode=longest,list,full
set wildmenu

let mapleader = ","

filetype plugin indent on
filetype detect

set softtabstop=0
set expandtab
set shiftwidth=2
set smarttab
syntax on

" Begin heavier nvim stuff
call plug#begin('~/.local/share/nvim/plugged')
Plug 'kyazdani42/nvim-web-devicons'
Plug 'kyazdani42/nvim-tree.lua'
Plug 'mhartington/oceanic-next'
call plug#end()

if (has('termguicolors'))
  set termguicolors
endif 

colorscheme OceanicNext

" Load statusline
lua require('phyline')
lua require('binds')

let &undodir = $HOME . "/.local/share/nvim/undo"

" nvim-tree config {{

let g:nvim_tree_ignore = ['.git', 'node_modules']
let g:nvim_tree_quit_on_open = 1
let g:nvim_tree_git_hl = 1
let g:nvim_tree_show_icons = { 'git': 1, 'folders': 1, 'files': 1 }
nnoremap <leader>t :NvimTreeToggle<CR>

" }}

