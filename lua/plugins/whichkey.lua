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

      -- Display Settings
      ["<leader>s"] =  "Settings",
      ["<leader>sd"] = { "<cmd>set background=dark<CR>", "Dark Background" },
      ["<leader>sl"] = { "<cmd>set background=light<CR>", "Light Background" },
      -- Themes
      ["<leader>sc"] =  "Colorschemes",

      ["<leader>sce"] =  { "<cmd>colorscheme everforest<CR>", "Everforest" },
      ["<leader>scc"] =  { "<cmd>colorscheme catppuccin<CR>", "Catppuccin" },

      ["<leader>sct"] =  "Tokyonight (multiple options)",
      ["<leader>sct<CR>"] =  { "<cmd>colorscheme tokyonight-storm<CR>", "Tokyonight Storm (darker)" },
      ["<leader>scts"] =  { "<cmd>colorscheme tokyonight-storm<CR>", "Tokyonight Storm (darker)" },
      ["<leader>sctn"] =  { "<cmd>colorscheme tokyonight-night<CR>", "Tokyonight Night (darkest)" },
      ["<leader>sctm"] =  { "<cmd>colorscheme tokyonight-moon<CR>", "Tokyonight Moon (dark-ish)" },
      ["<leader>sctd"] =  { "<cmd>colorscheme tokyonight-day<CR>", "Tokyonight (light)" },
    })
  end,
}
