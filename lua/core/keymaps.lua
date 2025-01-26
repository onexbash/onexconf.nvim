-- open file explorer
vim.keymap.set("n", "<C-n>", "<CMD>Oil<CR>", { desc = "oil: open filetree" })

-- reload nvim config
vim.keymap.set("n", "<leader>F5", "<cmd>source %<CR>")
