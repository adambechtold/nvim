return {
  {
    "catppuccin/nvim",
    name = "catppuccin",
    -- priority = 1000,
    enabled = true,
    config = function()
      vim.cmd.colorscheme("catppuccin")
    end,
  },
  {
    "neanias/everforest-nvim",
    enabled = false,
    priority = 1000,
    lazy = false,
    config = function()
      require("everforest").setup({
        background = "hard", -- medium is the default
        ui_contrast = "high", -- low is the default
      })
      vim.cmd.colorscheme("everforest")
      -- vim.o.background = "light" -- do this in real time with `:set background=light`
    end,
  },
}
