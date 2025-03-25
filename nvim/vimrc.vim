call plug#begin(has('nvim') ? stdpath('data') . '/plugged' : '~/vim.plugged')
Plug 'ms-jpq/coq_nvim', {'branch': 'coq'}
Plug 'ms-jpq/coq.artifacts', {'branch': 'artifacts'}
Plug 'ms-jpq/coq.thirdparty', {'branch': '3p'}
Plug 'xiyaowong/transparent.nvim'
Plug 'nvim-lualine/lualine.nvim'
Plug 'nvim-tree/nvim-web-devicons'
Plug 'sitiom/nvim-numbertoggle'
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}	
Plug 'numToStr/Comment.nvim'
Plug 'neovim/nvim-lspconfig'
Plug 'folke/tokyonight.nvim'
Plug 'akinsho/toggleterm.nvim', {'tag' : '*'}
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim', {'branch' : '1.0.x'}
Plug 'tiagovla/scope.nvim' 
Plug 'mg979/vim-visual-multi', {'branch': 'master'}

call plug#end()

lua << EOF 
require('Comment').setup({ignore = '^$',
            toggler = {
                line = '<leader>cc',
                block = '<leader>bc',
            },
            opleader = {
                line = '<leader>c',
                block = '<leader>b',
            },
        })
EOF


set tabstop=2  
set shiftwidth=2
set expandtab
set softtabstop=2

set number
let g:loaded_node_provider = 0
