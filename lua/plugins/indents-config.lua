return {
	{
		"echasnovski/mini.indentscope",
    enabled = false,
		config = function()
			require("mini.indentscope").setup({
				draw = {
					delay = 25, -- default value
					---@diagnostic disable-next-line: unused-local
					animation = function(s, n) -- return the time between steps (s is the next step, n is the total number of steps)
						if n < 30 then
							return 20
						end
						return 30 / (s / 2)
					end,
				},
			})
		end,
	},
	{
		"lukas-reineke/indent-blankline.nvim",
		config = function()
			local highlight = {
				"CursorColumn",
				"Whitespace",
			}

			require("ibl").setup({

				indent = { highlight = highlight, char = "|" },
				whitespace = {
					highlight = highlight,
					remove_blankline_trail = true,
				},
				scope = { enabled = true }, -- enabled by default
			})
		end,
	},
}
