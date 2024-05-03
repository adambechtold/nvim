return {
	"nvimtools/none-ls.nvim",
	config = function()
		local null_ls = require("null-ls")
		null_ls.setup({
			sources = {
				-- install in the formatting section of mason
				null_ls.builtins.formatting.stylua,
				null_ls.builtins.formatting.prettier.with({
					args = { "--single-quote" },
				}),
				null_ls.builtins.formatting.black,
				null_ls.builtins.formatting.isort,

				-- install eslint_d with mason
				-- null_ls.builtins.diagnostics.eslint_d,
			},
		})
		vim.keymap.set("n", "<leader>ff", vim.lsp.buf.format, {})
	end,
}
