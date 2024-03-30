return {
	{
		"echasnovski/mini.indentscope",
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
}
