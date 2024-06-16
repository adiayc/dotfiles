local vimrc = vim.fn.stdpath("config") .. "/vimrc.vim"
vim.cmd.source(vimrc)

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

require'tabline'.setup {
      enable = true,
      options = {
        section_separators = {'', ''},
        component_separators = {'', ''},
        max_bufferline_percent = 66, 
        show_tabs_always = false, 
        show_devicons = true, 
        show_bufnr = false, 
        show_filename_only = false, 
        modified_icon = "+ ", 
        modified_italic = false, 
        show_tabs_only = false, 
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

vim.cmd("colorscheme kanagawa")

