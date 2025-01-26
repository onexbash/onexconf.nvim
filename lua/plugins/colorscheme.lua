return {
	"catppuccin/nvim",
	name = "catppuccin",
	priority = 1000,
	config = function()
    require("catppuccin").setup({
      flavour = "mocha",
      transparent_background = true,
      default_integrations = false, -- disabled as manually set
      integrations = {
        telescope = {
          enabled = true,
          style = "nvchad"
        },
        alpha = true
      },

    })
		vim.cmd.colorscheme "catppuccin"
	end
}
