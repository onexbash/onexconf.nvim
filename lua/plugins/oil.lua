return {
  "stevearc/oil.nvim",
  dependencies = { { "echasnovski/mini.icons", opts = {} } },
  version = "*",
  cmd = "Oil",
  opts = {
		default_file_explorer = true,
		delete_to_trash = true, -- move to trash instead of instantly deleting
		use_default_keymaps = false, -- clear default keymaps
		columns = { "icon" }, -- | icon | permissions | size | mtime
		watch_for_changes = true, -- reload on file change
		view_options = {
			show_hidden = true, -- show hidden files (dotfiles)
			is_hidden_file = function(name)
				return vim.startswith(name, ".")
			end,
			is_always_hidden = function(name)
				-- always hide .DS_Store and ../
				return name == ".DS_Store" or name == ".."
			end,
		},
		keymaps = {
			["g?"] = { "actions.show_help", desc = "oil: show keymaps" },
			["<CR>"] = { "actions.select", desc = "oil: open" },
			["<C-s>"] = { "actions.select", opts = { vertical = true }, desc = "oil: open in vertical split" },
			["<C-t>"] = { "actions.select", opts = { tab = true }, desc = "oil: open in new tab" },
			["<C-p>"] = { "actions.preview", desc = "oil: open in preview" },
			["<C-q>"] = { "actions.close", desc = "oil: close" },
			["<F5>"] = { "actions.refresh", desc = "oil: refresh" },
			["<BS>"] = { "actions.parent", desc = "oil: go to parent directory" },
			["<C-.>"] = { "actions.open_cwd", desc = "oil: open cwd" },
			["cd"] = {
				"actions.cd",
				opts = { scope = "tab" },
				desc = "oil: change directory for current tab",
				mode = "n",
			},
			["<C-CR>"] = { "actions.open_external", desc = "oil: open with default app" },
			["H"] = { "actions.toggle_hidden", desc = "oil: toggle hidden files" },
		},
  },
}
