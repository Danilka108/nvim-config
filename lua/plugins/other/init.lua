local M = {}

M.startup = function(use)
	-- Helper for vim config development
	use {
		"folke/neodev.nvim",
		config = function()
			require 'neodev'.setup()
		end
	}

	use {
		"lukas-reineke/indent-blankline.nvim",
		config = function ()
			require 'plugins.other.indent-blankline'
		end

	}

	-- Greeter
	use {
		'goolord/alpha-nvim',
		requires = { 'nvim-tree/nvim-web-devicons' },
		config = function()
			require 'alpha'.setup(require 'alpha.themes.startify'.config)
		end
	}

	-- Git
	use {
		'lewis6991/gitsigns.nvim',
		config = function()
			require 'gitsigns'.setup()
		end
	}

	-- Theme
	use {
		'sainnhe/gruvbox-material',
		config = function()
			require 'plugins.other.gruvbox'
		end
	}

	-- Comments
	use {
		'numToStr/Comment.nvim',
		config = function()
			require 'plugins.other.comment'
		end
	}

	-- Autopairs
	use {
		'windwp/nvim-autopairs',
		config = function()
			require 'nvim-autopairs'.setup()
		end
	}
end

return M
