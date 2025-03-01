return {
	{
		"echasnovski/mini.surround",
		version = "*",
		config = function()
			require("mini.surround").setup({
				mappings = {
					add = "ysa",
					delete = "ysd",
					replace = "ysr",
					update_n_lines = "ysn",
					highlight = "ysh",
					find = "ysf",
					find_left = "ysF",
				},
			})
		end,
	},
}
