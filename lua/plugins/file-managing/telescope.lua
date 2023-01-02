local telescope = require 'telescope'

telescope.setup {
	defaults = {
		mappings = {
			n = {
				['<c-c>'] = require 'telescope.actions'.close,
			},
		},
		prompt_prefix = "   ",
		selection_caret = "  ",
		entry_prefix = "  ",
		initial_mode = 'insert',
		selection_strategy = 'reset',
		sorting_strategy = 'ascending',
		layout_strategy = 'horizontal',
		layout_config = {
			horizontal = {
				promt_position = 'top',
				preview_width = 0.5,
				results_width = 0.8,
			}
		},
		file_previewer = require 'telescope.previewers'.vim_buffer_cat.new,
		path_display = { 'truncate' },
		color_devicons = true,
	},
}

local map = vim.api.nvim_set_keymap
local opts = { noremap = true, silent = true }

map('n', '<leader>ff', '<cmd>Telescope find_files<CR>', opts)
map('n', '<leader>fg', '<cmd>Telescope live_grep<CR>', opts)
map('n', '<leader>fb', '<cmd>Telescope buffers<CR>', opts)
