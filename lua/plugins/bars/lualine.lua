require 'lualine'.setup {
	options = {
		theme = 'gruvbox-material',
		icon_enabled = true,
		component_separators = { left = '', right = ''},
		section_separators = { left = '', right = '' },
		always_divide_middle = true,
		globalstatus = false,
		sections = {
			lualine_c = {'filename', 'lsp_progress'},
			lualine_y = {'progress'},
			lualine_z = {'location'}
		},
	}
}
