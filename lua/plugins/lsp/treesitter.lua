require 'nvim-treesitter.configs'.setup {
	ensure_installed = { "lua", "rust" },
	sync_install = true,
	auto_install = true,
	highlight = {
		enable = true,
		use_languagetree = true,
		additional_vim_regex_highlighting = false,
	},
	autopairs = {
		enable = true,
	},
	indent = {
		enable = true
	},
}
