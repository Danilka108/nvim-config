local map = vim.api.nvim_set_keymap

function nmap(key, command)
	map('n', key, command, { noremap = true })
end


