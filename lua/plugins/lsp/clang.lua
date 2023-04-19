local common = require 'plugins.lsp.common'
local lspconfig = require'lspconfig'

lspconfig.clangd.setup {
	on_attach = common.on_attach,
	capabilities = common.capabilities,
}
