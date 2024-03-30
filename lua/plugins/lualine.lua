return {
	"nvim-lualine/lualine.nvim",
	config = function()
		require("lualine").setup({
			options = {
				theme = "dracula", -- works great with catppuccin
				-- theme = "everforest",
			},
		})
	end,
}
