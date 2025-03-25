local vimrc = vim.fn.stdpath("config") .. "/vimrc.vim"
vim.cmd.source(vimrc)

require('telescope.actions').select_default:replace(require('telescope.actions').select_tab)

require('lualine').setup {
  options = {
    icons_enabled = true,
    theme = 'horizon',
    component_separators = { left = '', right = ''},
    section_separators = { left = '', right = ''},
    disabled_filetypes = {
      statusline = {},
      winbar = {},
    },
    ignore_focus = {},
    always_divide_middle = true,
    globalstatus = false,
    refresh = {
      statusline = 1000,
      tabline = 1000,
      winbar = 1000,
    }
  },
  sections = {
    lualine_a = {'mode'},
    lualine_b = {'branch', 'diff', 'diagnostics'},
    lualine_c = {'filename'},
    lualine_x = {'encoding', 'fileformat', 'filetype'},
    lualine_y = {'progress'},
    lualine_z = {'location'}
  },
  inactive_sections = {
    lualine_a = {},
    lualine_b = {},
    lualine_c = {'filename'},
    lualine_x = {'location'},
    lualine_y = {},
    lualine_z = {}
  },
  tabline = {},
  winbar = {},
  inactive_winbar = {},
  extensions = {}
}

require("toggleterm").setup()

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
require('telescope').setup{
  defaults = {
    file_ignore_patterns = { ".git/" },  -- Still ignore .git directory
    find_command = { "fd", "--type", "f", "--hidden", "--follow" }  -- Uses fd to search
  },
  pickers = {
    find_files = {
      hidden = true
    },
    live_grep = {
      additional_args = function()
        return { "--hidden" }
      end
    }
  }
}

local configs  = require'nvim-treesitter.configs'
configs.setup{
	highlight={
		enable = true,
	},
	indent = {
		enable=true,
	}
}

local builtin = require('telescope.builtin')
vim.keymap.set('n', '<leader>ff', builtin.find_files, { desc = 'Telescope find files' })
vim.keymap.set('n', '<leader>fg', builtin.live_grep, { desc = 'Telescope live grep' })
vim.keymap.set('n', '<leader>fb', builtin.buffers, { desc = 'Telescope buffers' })
vim.keymap.set('n', '<leader>fh', builtin.help_tags, { desc = 'Telescope help tags' })

vim.cmd("colorscheme tokyonight")

vim.opt.tabstop    = 2
vim.opt.shiftwidth = 2
vim.opt.expandtab  = true
