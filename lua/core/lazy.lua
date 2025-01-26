-- Bootstrap lazy.nvim
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not (vim.uv or vim.loop).fs_stat(lazypath) then
  local lazyrepo = "https://github.com/folke/lazy.nvim.git"
  local out = vim.fn.system({ "git", "clone", "--filter=blob:none", "--branch=stable", lazyrepo, lazypath })
  if vim.v.shell_error ~= 0 then
    vim.api.nvim_echo({
      { "Failed to clone lazy.nvim:\n", "ErrorMsg" },
      { out, "WarningMsg" },
      { "\nPress any key to exit..." },
    }, true, {})
    vim.fn.getchar()
    os.exit(1)
  end
end
vim.opt.rtp:prepend(lazypath)

require("lazy").setup({
	spec = {
		{ import = "plugins" },
	},
  defaults = {
    version = "*", -- latest stable version if semantic versioning is supported
  },
  install = {
    colorscheme = { "catppuccin" },
  },
  ui = {
    size = { width = 0.8, height = 0.8 },
    border = "single"
  },
  checker = {
    enabled = true
  },
  change_detection = {
    enabled = true,
    notify = false, -- disable notification on nvim config change
  },
  performance = {
    rtp = {
      -- disable builtin nvim plugins (e.g: netrw)
      disabled_plugins = {
        "netrwPlugin"
      },
    },
  }
})
