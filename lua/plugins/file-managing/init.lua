local M = {}

local function open_nvim_tree()
	require("nvim-tree.api").tree.open()
end

vim.api.nvim_create_autocmd({ "VimEnter" }, { callback = open_nvim_tree })

M.startup = function(use)
	use {
		'nvim-tree/nvim-tree.lua',
		requires = {
			'nvim-tree/nvim-web-devicons', -- optional, for file icons
		},
		config = function()
			require 'plugins.file-managing.nvim-tree'
		end
	}

	use {
		'nvim-telescope/telescope.nvim',
		config = function()
			require 'plugins.file-managing.telescope'
		end
	}
end

return M
