return {
  "nvim-lualine/lualine.nvim",
  event = { "BufEnter", "BufReadPre" },
  dependencies = {
    "nvim-tree/nvim-web-devicons"
  },
  opts = {
    theme = "catppuccin"
  }
}
