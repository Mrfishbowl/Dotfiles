return {
	"catppuccin/nvim",
	name = "catppuccin",
	priority = 1000,
	config = function()
		require("catppuccin").setup({
			transparent_background = true,
			color_overrides = {
				all = {
					blue = "#b7bdf8",
					surface1 = "#b7bdf8"
				}
			}
		})
		vim.cmd ("colorscheme catppuccin-macchiato")
	end
}
