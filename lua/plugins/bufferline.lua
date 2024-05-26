return {
  {
    "akinsho/bufferline.nvim",
    version = "*",
    dependencies = "nvim-tree/nvim-web-devicons",
    config = function()
      -- vim.opt.termguicolors = true
      -- type :h bufferline-configuration for more info
      require("bufferline").setup({
        options = {
          separator_style = "thick",
        },
      })
    end,
  },
}
