return {
  -- https://github.com/folke/which-key.nvim
  "folke/which-key.nvim",
  event = "VeryLazy",
  init = function()
    vim.o.timeout = true
    vim.o.timeoutlen = 300
  end,
  opts = {
    -- your configuration comes here
    -- or leave it empty to use the default settings
    -- refer to the configuration section below
  },
  config = function()
    local wk = require("which-key")
    wk.register({
      ["]r"] = { "<cmd>lua require('illuminate').goto_next_reference{wrap=true}<CR>", "Next Reference" },
      ["[r"] = { "<cmd>lua require('illuminate').goto_prev_reference{wrap=true}<CR>", "Previous Reference" },

      -- Display settings
      ["<leader>sd"] = { "<cmd>set background=dark<CR>", "Dark Background" },
      ["<leader>sl"] = { "<cmd>set background=light<CR>", "Light Background" },
      ["<leader>sce"] =  { "<cmd>colorscheme everforest<CR>", "Set Colorscheme to Everforest" },
      ["<leader>scc"] =  { "<cmd>colorscheme catppuccin<CR>", "Set Colorscheme to Catppuccin" },
    })
  end,
}
