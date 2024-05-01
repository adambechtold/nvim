return {
	"stevearc/aerial.nvim",
	opts = {},
	-- Optional dependencies
	dependencies = {
		"nvim-treesitter/nvim-treesitter",
		"nvim-tree/nvim-web-devicons",
	},
	config = function()
		require("aerial").setup({
			layout = {
				default_direction = "right",
				placement = "window",
        min_width = 30,
        max_width = 150,
			},
			highlight_on_hover = true,
			highlight_on_jump = 500, -- when jumping to a symbol, highlight it for this many ms
		})
	end,
}
