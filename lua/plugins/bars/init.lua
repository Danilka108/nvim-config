local M = {}

M.starup = function (use)
	-- Bottom statusbar
	use {
		'nvim-lualine/lualine.nvim',
		requires = { 'kyazdani42/nvim-web-devicons', opt = true },
		config = function()
			require 'plugins.bars.lualine'
		end
	}

	-- Tabs
	use {
		'akinsho/bufferline.nvim',
		tag = "v3.*",
		requires = 'nvim-tree/nvim-web-devicons',
		config = function()
			require 'plugins.bars.bufferline'
		end
	}
end

return M
