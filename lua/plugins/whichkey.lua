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

      -- Move between buffers
      ["]b"] = { ":bp<CR>", "Previous Buffer" },
      ["[b"] = { ":bn<CR>", "Next Buffer" },

      -- Telescope
      ["<leader> "] = { "<cmd>Telescope find_files<CR>", "Find Files" },
      ["<leader>fg"] = { "<cmd>Telescope live_grep<CR>", "Live Grep" },
      ["<leader>fb"] = { "<cmd>Telescope buffers<CR>", "Buffers" },
      ["<leader>fc"] = { "<cmd>Telescope commands<CR>", "Commands" },
      ["<leader>fh"] = { "<cmd>Telescope help_tags<CR>", "Help Tags" },
      ["<leader>fs"] = { "<cmd>Telescope search_history<CR>", "Search History" },

      -- Display Settings
      ["<leader>s"] = "Settings",
      ["<leader>sd"] = { "<cmd>set background=dark<CR>", "Dark Background" },
      ["<leader>sl"] = { "<cmd>set background=light<CR>", "Light Background" },
      -- Themes
      ["<leader>sc"] = "Colorschemes",

      ["<leader>sce"] = { "<cmd>colorscheme everforest<CR>", "Everforest" },
      ["<leader>scc"] = { "<cmd>colorscheme catppuccin<CR>", "Catppuccin" },

      ["<leader>sct"] = "Tokyonight (multiple options)",
      ["<leader>sct<CR>"] = { "<cmd>colorscheme tokyonight-storm<CR>", "Tokyonight Storm (darker)" },
      ["<leader>scts"] = { "<cmd>colorscheme tokyonight-storm<CR>", "Tokyonight Storm (darker)" },
      ["<leader>sctn"] = { "<cmd>colorscheme tokyonight-night<CR>", "Tokyonight Night (darkest)" },
      ["<leader>sctm"] = { "<cmd>colorscheme tokyonight-moon<CR>", "Tokyonight Moon (dark-ish)" },
      ["<leader>sctd"] = { "<cmd>colorscheme tokyonight-day<CR>", "Tokyonight (light)" },

      -- Git Signs
      ["<leader>g"] = "Git",
      ["<leader>gs"] = { "<cmd>lua require('gitsigns').stage_hunk()<CR>", "Stage Hunk" },
      ["<leader>gu"] = { "<cmd>lua require('gitsigns').undo_stage_hunk()<CR>", "Undo Stage Hunk" },
      ["<leader>gr"] = { "<cmd>lua require('gitsigns').reset_hunk()<CR>", "Reset Hunk" },
      ["<leader>gR"] = { "<cmd>lua require('gitsigns').reset_buffer()<CR>", "Reset Buffer" },
      ["<leader>gp"] = { "<cmd>lua require('gitsigns').preview_hunk()<CR>", "Preview Hunk" },
      ["<leader>gb"] = { "<cmd>lua require('gitsigns').blame_line()<CR>", "Blame Line" },
      ["]h"] = { "<cmd>lua require('gitsigns').next_hunk()<CR>", "Next Hunk" },
      ["[h"] = { "<cmd>lua require('gitsigns').prev_hunk()<CR>", "Previous Hunk" },
    })
  end,
}
