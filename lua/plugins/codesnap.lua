return {
	{
		"mistricky/codesnap.nvim",
		build = "make",
		config = function()
			require("codesnap").setup({
				has_breadcrumbs = true,
				bg_theme = "sea",
				watermark = "vibeiq",
				mac_window_bar = true,
				save_path = "~/Downloads",
			})
		end,
	},
}
