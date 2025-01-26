-- set leader key
vim.g.mapleader = " "
vim.g.maplocalleader = "\\"
-- load modules
require("core.lazy")
require("core.globals")
require("core.options")
require("core.keymaps")
require("core.autocmd")
