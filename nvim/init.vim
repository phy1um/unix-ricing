
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
set number
set hidden

let mapleader = ","

filetype plugin indent on
filetype detect

set softtabstop=0
set expandtab
set shiftwidth=2
set smarttab
syntax on

set autoindent

" bind - scratchpad
nnoremap <leader>n :vert new <bar> setlocal buftype=nofile bufhidden=hide noswapfile ro<CR>
" bind - jump to things
nnoremap <leader>f :Tags<CR>
nnoremap <leader>o :Files<CR>
nnoremap <SPACE><SPACE> :Buffers<CR>
" bind - open project specific config
nnoremap <leader>z :so .nvimlocal<CR>
" RESERVE - <leader>r for run project in .nvimlocal

if (has('termguicolors'))
  set termguicolors
endif 

if has("nvim")
  let $VIMPLUG = "~/.local/share/nvim/plugged"
else
  let $VIMPLUG = "~/.vim/plugged"
end

call plug#begin($VIMPLUG)
" plugins for vim and nvim
Plug 'mhartington/oceanic-next'
Plug 'junegunn/fzf'
Plug 'junegunn/fzf.vim'

if has("nvim")
  "Plug 'kyazdani42/nvim-tree.lua'
  Plug 'kyazdani42/nvim-web-devicons'
  Plug 'neovim/nvim-lspconfig'
  Plug 'nvim-lua/popup.nvim'
  Plug 'hrsh7th/nvim-cmp'
  Plug 'hrsh7th/cmp-nvim-lsp'
end

call plug#end()

colorscheme iceberg

if has("nvim")
  " Load statusline
  lua require('phyline')
  lua require('binds')
  lua require('term')
  lua require('settings')

  let &undodir = $HOME . "/.local/share/nvim/undo"

endif

