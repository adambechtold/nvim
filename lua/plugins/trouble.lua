return {
  "folke/trouble.nvim",
  dependencies = { "nvim-tree/nvim-web-devicons" },
  opts = {
    -- your configuration comes here
    -- or leave it empty to use the default settings
    -- refer to the configuration section below
  },
  config = function()
    require("which-key").register({
      ["<leader>x"] = "Trouble",
      ["<leader>xd"] = { "<cmd>TroubleToggle lsp_definitions<CR>", "LSP Definitions" },
      ["<leader>xi"] = { "<cmd>TroubleToggle lsp_implementations<CR>", "LSP Implementations" },
      ["<leader>xt"] = { "<cmd>TroubleToggle lsp_type_definitions<CR>", "LSP Type Definitions" },
      ["<leader>xr"] = { "<cmd>TroubleToggle lsp_references<CR>", "LSP References" },
      ["<leader>xz"] = { "<cmd>TroubleToggle lsp_document_diagnostics<CR>", "LSP Document Diagnostics" },
      ["<leader>xw"] = { "<cmd>TroubleToggle lsp_workspace_diagnostics<CR>", "LSP Workspace Diagnostics" },
      ["<leader>xl"] = { "<cmd>TroubleToggle loclist<CR>", "Location List" },
      ["<leader>xq"] = { "<cmd>TroubleToggle quickfix<CR>", "Quickfix" },
      ["<leader>xx"] = { "<cmd>TroubleToggle<CR>", "Toggle Trouble Display" },
    })
  end,
}
