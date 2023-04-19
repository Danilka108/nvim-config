local common = require 'plugins.lsp.common'

-- require 'lspconfig'.rust_analyzer.setup({
--     on_attach= common.on_attach,
-- 		-- capabilities = common.capabilities,
--     settings = {
--         ["rust-analyzer"] = {
--             imports = {
--                 granularity = {
--                     group = "module",
--                 },
--                 prefix = "self",
--             },
--             cargo = {
--                 buildScripts = {
--                     enable = true,
--                 },
--             },
--             procMacro = {
--                 enable = true
--             },
--         }
--     }
-- })

local rt = require 'rust-tools'

rt.setup({
	tools = {
		autoSetHints = true,
		hover_with_actions = true,
		runnables = {
			use_telescope = true,
		},
		debuggables = {
			use_telescope = true,
		},
	},
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
