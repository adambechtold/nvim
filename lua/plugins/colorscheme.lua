-- All colorschemes without enabled = false will be loaded 
-- The highest priority colorscheme will be loaded first

return {
  {
    "catppuccin/nvim",
    name = "catppuccin",
    priority = 1000,
    config = function()
      vim.cmd.colorscheme("catppuccin")
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
}
