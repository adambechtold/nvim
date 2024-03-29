return {
  "nvim-treesitter/nvim-treesitter", 
  build = ":TSUpdate", 
  config = function()

    local tree_sitter_config = require("nvim-treesitter.configs")
    tree_sitter_config.setup({
      ensure_installed = { "arduino", "css", "go", "html", "javascript", "json", "lua", "markdown", "python", "typescript", "vim", "yaml", "zig" },
      highlight = { enabled = true },
      indent = { enabled = true }
    })
  end
}

