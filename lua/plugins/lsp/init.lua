local M = {}

M.startup = function(use)
	-- vim.formatting.config {
	-- 	float = { border = 'rounded' },
	-- }

	-- vim.lsp.handlers['textDocument/signatureHelp'] = vim.lsp.with(
	-- 	vim.lsp.diagnostic.signature_help, {
	-- 	border = 'single'
	-- })
	--
	-- vim.lsp.handlers['textDocument/hover'] = vim.lsp.with(
	-- 	vim.lsp.diagnostic.hover, {
	-- 	border = 'single'
	-- })
	--
	-- vim.diagnostic.config {
	-- 	float = { border = 'single' }
	-- }

	-- vim.lsp.handlers['textDocument/publishDiagnostics'] = vim.lsp.with(
	-- 	vim.lsp.diagnostic.on_publish_diagnostics, {
	-- 	float = { border = 'rounded' }
	-- })

	use {
		'neovim/nvim-lspconfig',
		config = function()
			require 'lspconfig.ui.windows'.default_options = {
				border = 'single'
			}
			require 'plugins.lsp.sumneko_lua'
		end
	}

	-- highlighting other uses
	use 'RRethy/vim-illuminate'

	-- Syntax highlighting
	use {
		'nvim-treesitter/nvim-treesitter',
		run = ':TSUpdate',
		config = function()
			require 'plugins.lsp.treesitter'
		end
	}

	-- Snippets
	use 'L3MON4D3/LuaSnip'
	use 'rafamadriz/friendly-snippets'

	-- Auto complete
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
			require 'plugins.lsp.cmp'
		end
	}

	-- LSP installer
	--
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
			require 'plugins.lsp.mason'
		end
	}

	-- mason - lspconfig
	use {
		'williamboman/mason-lspconfig.nvim',
		config = function()
			require 'plugins.lsp.mason-lsp-config'
		end
	}

	require 'plugins.lsp.clang'

	require 'plugins.lsp.csharp_ls'

	local common = require 'plugins.lsp.common'

	require 'lspconfig'.jsonls.setup({
		on_attach = common.on_attach,
		capabilities = common.capabilities,
	})

	require 'lspconfig'.marksman.setup({
		on_attach = common.on_attach,
		capabilities = common.capabilities,
	})

	require 'lspconfig'.pyright.setup({
		on_attach = common.on_attach,
		capabilities = common.capabilities,
	})


	-- Rust tools
	use 'mfussenegger/nvim-dap'
	use {
		'simrat39/rust-tools.nvim',
		after = { "mason-lspconfig.nvim" },
		ft = { "rust" },
		config = function()
			require 'plugins.lsp.rust-tools'
		end
	}
end

return M
