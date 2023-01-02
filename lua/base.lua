-- Insert 2 spaces for a tab
vim.opt.shiftwidth = 2
vim.opt.tabstop = 2

vim.opt.smartindent = true

-- Horizontal splits will be placed on the right side
vim.opt.splitright = true

-- Vertical splits will be placed below
vim.opt.splitbelow = true

-- Use system clipboard
vim.opt.clipboard = 'unnamedplus'

-- Do not put eol and the end of file
vim.opt.fixeol = false

-- Vertical line at column with number 100
vim.opt.colorcolumn = "80"

vim.opt.relativenumber = true

vim.opt.termguicolors = true

-- Do not show mode like '-- INSERT --'
vim.cmd[[set noshowmode]]

-- Do not comment newline
vim.cmd[[autocmd BufEnter * set fo-=c fo-=r fo-=o]]
