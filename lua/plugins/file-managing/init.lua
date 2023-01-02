local M = {}

M.startup = function (use)
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
