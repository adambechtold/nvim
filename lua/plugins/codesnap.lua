return {
	{
		"mistricky/codesnap.nvim",
		build = "make",
		config = function()
			require("codesnap").setup({
				has_breadcrumbs = true,
				bg_theme = "sea",
				watermark = "",
				mac_window_bar = true,
				save_path = "~/Downloads",
        code_font_family = "DejaVuSansM Nerd Font"
			})
		end,
	},
}
