require 'bufferline'.setup {
	options = {
		diagnostics = 'nvim_lsp',
		numbers = "buffer_id",
		diagnostics_indicator = function(count, level, diagnostics_dict, context)
			local icon = level:match("error") and " " or " "
			return " " .. icon .. count
		end,
	},
}
