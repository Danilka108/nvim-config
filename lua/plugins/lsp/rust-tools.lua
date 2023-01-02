local common = require 'plugins.configs.common'

require 'rust-tools'.setup({
	server = {
		capabilities = common.capabilities,
		on_attach = common.on_attach,
		settings = {
			["rust-analyzer"] = {
				-- HACK: https://github.com/simrat39/rust-tools.nvim/issues/300
				inlayHints = { locationLinks = false },
			},
		},
	},
})
