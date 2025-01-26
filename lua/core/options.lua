-- clipboard
vim.opt.clipboard = "unnamedplus"

-- scrolloff
vim.opt.scrolloff = 8 -- keep 8 lines above/below cursor till end of file

-- cursor line
vim.opt.cursorline = true -- highlight cursorline
vim.opt.relativenumber = true -- make line numbers relative
vim.opt.number = true -- enable line numbers
vim.opt.wrap = false -- disable line wrapping

-- indentation
vim.opt.tabstop = 2 -- 2 spaces for tabs
vim.opt.shiftwidth = 2 -- 2 spaces for indent width
vim.opt.expandtab = true -- expand tab to spaces
vim.opt.autoindent = true -- auto indent on new line

-- colors
vim.opt.termguicolors = true -- enable 24-bit colors
vim.opt.background = "dark" -- colorschemes that can be light or dark will be made dark

-- disabled providers
vim.g.loaded_perl_provider = 0 -- perl
vim.g.loaded_ruby_provider = 0 -- ruby
vim.g.loaded_python3_provider = 0 -- python

-- files
vim.opt.swapfile = false -- disable swapfile

