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
    local lualineCmd = function(t)
      return string.format("<cmd>lua require('lualine').setup({options = {theme = '%s'}})<CR>", t)
    end

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
      ["<leader>scd"] = { "<cmd>set background=dark<CR>", "Dark Background" },
      ["<leader>scl"] = { "<cmd>set background=light<CR>", "Light Background" },
      -- Themes
      ["<leader>sc"] = "Colorschemes",

      ["<leader>sce"] = {
        string.format("<cmd>lua vim.cmd [[colorscheme everforest]]<CR>%s", lualineCmd("everforest")),
        "Everforest",
      },
      ["<leader>scc"] = {
        string.format("<cmd>colorscheme catppuccin<CR>%s", lualineCmd("darcula")),
        "Catppuccin",
      },

      ["<leader>sct"] = "Tokyonight (multiple options)",
      ["<leader>sct<CR>"] = {
        string.format("<cmd>colorscheme tokyonight-storm<CR>%s", lualineCmd("darcula")),
        "Tokyonight Storm (darker)",
      },
      ["<leader>scts"] = {
        string.format("<cmd>colorscheme tokyonight-storm<CR>%s", lualineCmd("darcula")),
        "Tokyonight Storm (darker)",
      },
      ["<leader>sctn"] = {
        string.format("<cmd>colorscheme tokyonight-night<CR>%s", lualineCmd("darcula")),
        "Tokyonight Night (darkest)",
      },
      ["<leader>sctm"] = {
        string.format("<cmd>colorscheme tokyonight-moon<CR>%s", lualineCmd("darcula")),
        "Tokyonight Moon (dark-ish)",
      },
      ["<leader>sctd"] = {
        string.format("<cmd>colorscheme tokyonight-day<CR>%s", lualineCmd("darcula")),
        "Tokyonight (light)",
      },

      -- solarized
      ["<leader>scs"] = "Solarized",
      ["<leader>scsl"] = {
        string.format(
          "<cmd>set background=light<CR><cmd>colorscheme solarized<CR>%s",
          lualineCmd("solarized_light")
        ),
        "Solarized Light",
      },
      ["<leader>scsd"] = {
        string.format(
          "<cmd>set background=dark<CR><cmd>colorscheme solarized<CR>%s",
          lualineCmd("solarized_dark")
        ),
        "Solarized Dark",
      },

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
      ["<leader>gl"] = { "<cmd>LazyGit<CR>", "LazyGit" },

      -- Terminal
      ["<leader>t"] = "Terminal",
      ["<leader>tv"] = { "<cmd>vsplit term://zsh<CR>i", "New Terminal Vertical Split" },
      ["<leader>th"] = { "<cmd>split<CR><c-w>j <cmd>term<CR>i", "New Terminal Horizontal Split" },
      ["<leader>tt"] = { "<cmd>tabnew term://zsh<CR>", "New Terminal Tab" },
      ["<leader>tq"] = { "<cmd>bd!<CR>q<CR>", "Close Current Terminal" },
      -- Reminder: To escape terminal mode, use <C-\><C-n>

      -- Buffers
      ["<leader>b"] = "Buffers",
      ["<leader>bd"] = "Delete Buffer Options",
      ["<leader>bdo"] = { "<cmd>%bd|e#|bd#<CR>", "Delete Other Buffer" },
      -- Explanation -
      --  %bd - close all buffers
      -- | (pipe, to run multiple commands
      -- e# - open last editor
      -- bd# - delete current buffer

      ["bl"] = { "<cmd>ls<CR>", "List Buffers" },

      -- Spelling
      ["<leader>ss"] = "Spelling",
      ["<leader>sst"] = { "<cmd>set spell! spelllang=en_us<CR>", "Toggle Spelling" },
    })
  end,
}
