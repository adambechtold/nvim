vim.cmd("set expandtab")
vim.cmd("set tabstop=2")
vim.cmd("set softtabstop=2")
vim.cmd("set shiftwidth=2")

-- https://jeffkreeftmeijer.com/vim-number/
vim.cmd("set number relativenumber") -- relativenumber")

vim.g.mapleader = " "

local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

local plugins = {{
    "catppuccin/nvim",
    name = "catppuccin",
    priority = 1000
}, {
    'nvim-telescope/telescope.nvim',
    tag = '0.1.6',
    dependencies = {'nvim-lua/plenary.nvim'}
}, {
    "kdheepak/lazygit.nvim",
    cmd = {"LazyGit", "LazyGitConfig", "LazyGitCurrentFile", "LazyGitFilter", "LazyGitFilterCurrentFile"},
    -- optional for floating window border decoration
    dependencies = {"nvim-lua/plenary.nvim"},
    -- setting the keybinding for LazyGit with 'keys' is recommended in
    -- order to load the plugin when the command is run for the first time
    keys = {{
        "<leader>lg",
        "<cmd>LazyGit<cr>",
        desc = "LazyGit"
    }}
}, {
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
    }
}}
local opts = {}

require("lazy").setup(plugins, opts)

-- Configure Telescope
local builtin = require('telescope.builtin')
vim.keymap.set('n', '<Leader> ', builtin.find_files, {})
vim.keymap.set('n', '<Leader>g', builtin.live_grep, {})
vim.keymap.set('n', '<Leader>fb', builtin.buffers, {})
vim.keymap.set('n', '<Leader>fc', builtin.commands, {})

-- Configure Catppuccin Theme 
require("catppuccin").setup()
vim.cmd.colorscheme "catppuccin"

--[[
Plugins of Interest:
- Manage Bufferes as clickable, reorderable tabs: barbar https://github.com/romgrk/barbar.nvim
]]

