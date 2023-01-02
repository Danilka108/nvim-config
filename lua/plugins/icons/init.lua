local M = {}

M.startup = function(use)
	use {
		'kyazdani42/nvim-web-devicons',
		config = function()
			require 'nvim-web-devicons'.setup()
		end
	}

	-- LSP icons
	use {
		'onsails/lspkind-nvim',
		config = function()
			require 'plugins.icons.lspkind'
		end
	}

	use {
		'simrat39/symbols-outline.nvim',
		config = function()
			require 'plugins.icons.symbols-online'
		end,
	}
end

return M
