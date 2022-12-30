local fn = vim.fn
local install_path = fn.stdpath('data')..'/site/pack/packer/start/packer.nvim'
if fn.empty(fn.glob(install_path)) > 0 then
  packer_bootstrap = fn.system({
		'git',
		'clone',
		'--depth', '1',
		'https://github.com/wbthomason/packer.nvim',
		install_path
	})
end

require 'packer'.startup(function(use)
  use 'wbthomason/packer.nvim'

	use 'nvim-lua/plenary.nvim'

	use {
		'sainnhe/gruvbox-material',
		config = function ()
			require 'plugins.gruvbox'
		end
	}

	use 'b3nj5m1n/kommentary'

	-- Autopairs
	use {
		'windwp/nvim-autopairs',
		config = function ()
			require 'nvim-autopairs'.setup {}
		end
	}

	-- Bottom statusbar
	use {
		'nvim-lualine/lualine.nvim',
		requires = { 'kyazdani42/nvim-web-devicons', opt = true },
		config = function()
			require('plugins/lualine')
		end
	}


	-- Syntax highlighting
	use {
      'nvim-treesitter/nvim-treesitter',
      run = ':TSUpdate',
      config = function()
        require 'plugins.treesitter'
      end
  }

	-- File managing
	use "nvim-telescope/telescope-file-browser.nvim"

	use {
    'nvim-telescope/telescope.nvim',
    config = function()
      require('plugins.telescope')
    end
  }

	-- Snippets 
	use 'L3MON4D3/LuaSnip'
	use 'rafamadriz/friendly-snippets'

  if packer_bootstrap then
    require('packer').sync()
  end


	-- LSP
	use {
		'neovim/nvim-lspconfig',
		config = function()
			require 'plugins.lsp-config'
		end
	}

	-- LSP auto complete
	use {
		'hrsh7th/nvim-cmp',
		requires = {
			'saadparwaiz1/cmp_luasnip',
			'hrsh7th/cmp-nvim-lsp',
			'hrsh7th/cmp-path',
			'hrsh7th/cmp-emoji',
			'hrsh7th/cmp-nvim-lsp-signature-help',
			'hrsh7th/cmp-nvim-lua'
		},
		config = function()
			require 'plugins.cmp'
		end
	}

	-- LSP icons
	use {
		'onsails/lspkind-nvim',
		config = function()
			require('plugins.lspkind')
		end
	}

	use {
		'simrat39/symbols-outline.nvim',
		config = function()
			require('plugins.symbols-online')
		end,
	}

	-- LSP troubles window
	use {
		"folke/trouble.nvim",
		requires = "kyazdani42/nvim-web-devicons",
		config = function()
			require "plugins.trouble"
		end,
	}

	-- LSP installer
	-- Unix requirements:
	-- git
	-- curl
	-- wget
	-- unzip
	-- tar
	-- gzip
	use {
		'williamboman/mason.nvim',
		config = function()
			require 'plugins.mason'
		end
	}

	-- mason - lspconfig
	use {
		'williamboman/mason-lspconfig.nvim',
		config = function()
			require 'plugins.mason-lsp-config'
		end
	}
end)
