return {
	"nvim-lualine/lualine.nvim",
	config = function()
		require("lualine").setup({
			options = {
				theme = "dracula", -- works great with catppuccin
				-- theme = "everforest",
				-- every time we change themes in whichkey, we update the theme of lua line
				-- Right now, it calls setup again, which is not idea, because we might have
				-- other options besides theme that we want to keeping
				-- We can solve this if/when we run into that problem
			},
		})
		require("lualine").setup({
			sections = {
				lualine_x = {
					{
						require("noice").api.statusline.mode.get,
						cond = require("noice").api.statusline.mode.has,
						color = { fg = "#ff9e64" },
					},
				},
			},
		})
	end,
}
