local actions = require 'telescope.actions'
local trouble = require 'trouble.providers.telescope'
local telescope = require 'telescope'

telescope.setup {
	defaults = {
		mappings = {
			i = { ['<c-t>'] = trouble.open_with_trouble },
			n = { ['<c-t>'] = trouble.open_with_trouble },
		},
	},
	extensions = {
		file_browser = {},
	},
	pickers = {
		buffers = {
			initial_mode = 'normal'
		}
	}
}

telescope.load_extension 'file_browser'

local map = vim.api.nvim_set_keymap
local opts = {noremap = true, silent = true }

map('n', '<leader>ff', '<cmd>Telescope find_files<CR>', opts) 
map('n', '<leader>fg', '<cmd>Telescope live_grep<CR>', opts) 
map('n', '<leader>fb', '<cmd>Telescope buffers<CR>', opts) 
map('n', '<leader>fm', '<cmd>Telescope file_browser<CR>', opts)
