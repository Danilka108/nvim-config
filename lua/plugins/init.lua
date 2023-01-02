local fn = vim.fn
local install_path = fn.stdpath('data') .. '/site/pack/packer/start/packer.nvim'
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

	require 'plugins.other'.startup(use)

	require 'plugins.bars'.starup(use)

	require 'plugins.file-managing'.startup(use)

	require 'plugins.icons'.startup(use)

	require 'plugins.lsp'.startup(use)

	if packer_bootstrap then
		require('packer').sync()
	end
end)
