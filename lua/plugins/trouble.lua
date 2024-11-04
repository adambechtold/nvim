return {
	"folke/trouble.nvim",
	dependencies = { "nvim-tree/nvim-web-devicons" },
	opts = {
		-- your configuration comes here
		-- or leave it empty to use the default settings
		-- refer to the configuration section below
	},
	config = function()
		require("which-key").add({
			{ "<leader>x", desc = "Trouble" },
			{ "<leader>xd", "<cmd>TroubleToggle lsp_definitions<CR>", desc = "LSP Definitions" },
			{ "<leader>xi", "<cmd>TroubleToggle lsp_implementations<CR>", desc = "LSP Implementations" },
			{ "<leader>xl", "<cmd>TroubleToggle loclist<CR>", desc = "Location List" },
			{ "<leader>xq", "<cmd>TroubleToggle quickfix<CR>", desc = "Quickfix" },
			{ "<leader>xr", "<cmd>TroubleToggle lsp_references<CR>", desc = "LSP References" },
			{ "<leader>xt", "<cmd>TroubleToggle lsp_type_definitions<CR>", desc = "LSP Type Definitions" },
			{ "<leader>xw", "<cmd>TroubleToggle lsp_workspace_diagnostics<CR>", desc = "LSP Workspace Diagnostics" },
			{ "<leader>xx", "<cmd>TroubleToggle<CR>", desc = "Toggle Trouble Display" },
			{ "<leader>xz", "<cmd>TroubleToggle lsp_document_diagnostics<CR>", desc = "LSP Document Diagnostics" },
		})
	end,
}
