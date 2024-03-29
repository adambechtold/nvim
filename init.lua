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

require("lazy").setup("plugins")

-- Configure NeoTree
vim.keymap.set('n', '<C-n>', ':Neotree filesystem reveal right<CR>', {})

--[[
Plugins of Interest:
- Manage Buffers as clickable, reorderable tabs: barbar https://github.com/romgrk/barbar.nvim
- See Directory: neo-tree https://github.com/nvim-neo-tree/neo-tree.nvim
- A more clear line at the bottom that shows the current state of neovim (e.g. insert, replace, etc.): lualine https://github.com/nvim-lualine/lualine.nvim?tab=readme-ov-file

- List of Plugins from LazyVim: http://www.lazyvim.org
]]

