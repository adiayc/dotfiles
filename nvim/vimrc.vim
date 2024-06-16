call plug#begin(has('nvim') ? stdpath('data') . '/plugged' : '~/vim.plugged')

Plug 'xiyaowong/transparent.nvim'
Plug 'nvim-lualine/lualine.nvim'
Plug 'nvim-tree/nvim-web-devicons'
Plug 'kdheepak/tabline.nvim'
Plug 'sitiom/nvim-numbertoggle'
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}	
Plug 'numToStr/Comment.nvim'
Plug 'https://github.com/rebelot/kanagawa.nvim'
Plug 'neovim/nvim-lspconfig'

call plug#end()

lua require('Comment').setup()
set number
let g:loaded_node_provider = 0
