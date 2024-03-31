-- All colorschemes without enabled = false will be loaded
-- The one with vim.cmd.colorscheme("name") will be the default

return {
  {
    "catppuccin/nvim",
    name = "catppuccin",
    priority = 0,
    config = function()
      -- vim.cmd.colorscheme("catppuccin")
    end,
  },
  {
    "neanias/everforest-nvim",
    priority = 0,
    lazy = false,
    config = function()
      require("everforest").setup({
        background = "hard", -- medium is the default
        ui_contrast = "high", -- low is the default
      })
      -- vim.cmd.colorscheme("everforest")
      -- vim.o.background = "light" -- do this in real time with `:set background=light`
    end,
  },
  {
    "folke/tokyonight.nvim",
    lazy = false,
    priority = 1000,
    opts = {},
    config = function()
      vim.cmd.colorscheme("tokyonight-storm")
    end,
  },
  {
    "maxmx03/solarized.nvim",
    priority = 0,
  }
}
