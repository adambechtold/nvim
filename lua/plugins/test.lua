return {
	{
		"nvim-neotest/neotest",
		dependencies = { "nvim-neotest/neotest-jest" },
		opts = function(_, opts)
			table.insert(
				opts.adapters,
				require("neotest-jest")({
					jestComment = "npm test --",
					jestConfigFile = "custom.jest.config.ts",
					env = { CI = true },
					cwd = function()
						return vim.fn.getcwd()
					end,
				})
			)
		end,
	},
}
