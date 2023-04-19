vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

require 'nvim-tree'.setup({
	-- open_on_setup = true,
	-- open_on_setup_file = true,
	view = {
		adaptive_size = true,
		side = 'left',
		width = 25,
		hide_root_folder = false,
	},
	filesystem_watchers = {
		enable = true,
	},
	actions = {
		open_file = {
			resize_window = true,
		},
	},
	filters = {
		dotfiles = true,
	},
	renderer = {
		group_empty = true,
		icons = {
			show = {
				file = true,
				folder = true,
				folder_arrow = true,
				git = true,
			},
			glyphs = {
				default = "",
				symlink = "",
				folder = {
					default = "",
					empty = "",
					empty_open = "",
					open = "",
					symlink = "",
					symlink_open = "",
					arrow_open = "",
					arrow_closed = "",
				},
				git = {
					unstaged = "✗",
					staged = "✓",
					unmerged = "",
					renamed = "➜",
					untracked = "★",
					deleted = "",
					ignored = "◌",
				},
			},
		},
	},
})
