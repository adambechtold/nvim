# Priorities
- [ ] Integrate Spellcheck
- [ ] Fix eslint and get it to work with tslint.json files in contrail projects
- [ ] Set up tmux so I can bounce between various projects

## Update LSP
- [ ] Consider updating the lsp so that it updates it's warning during insert mode

```lua
vim.diagnostic.config({
  update_in_insert = true
})
```

[dotfyle.com](https://dotfyle.com/)

## Plugins to Try
- [ ] telescope-undo.nvim
- [ ] inc-rename (smjonas / inc-rename.nvim) Incremental renaming for Neovim based on neovim's command-preview feature
- [ ] todo-comments (folke/todo-comments.nvim) - ✅ ✏️ Highlight, list and search todo comments in your projects
- [ ] mini.nvim (echasnovski/mini.nvim)
  - [ ] mini.comment 
  - [x] mini.pairs
  - [ ] mini.diff
  - [ ] mini.files - File explorer
  - [ ] mini.surround
  - [x] mini.indentscope
- [x] bufferline.nvim (akinsho/nvim-bufferline.lua) - A snazzy bufferline for Neovim
- [ ] noice (folke/noice.nvim) - Highly experimental plugin that completely replaces the ui for messages, cmdline, and popupmenu
- [ ] trouble (folke/trouble.nvim) - 🚦 A pretty diagnostics, references, telescope results, quickfix and location list to help you solve all the trouble your code is causing
- [x] vim-illuminate (RRethy/vim-illuminate) - illuminate.vim - Vim plugin for automatically highlighting other uses of the word under the cursor.
- [ ] yanky (gbprod/yank.nvim) - Improved yank and put functionalitys for neovim (e.g. yank history)
- [x] aerial (stevearc/aerial.nvim) - Code outline window
  - [ ] compare to outline.nvim (hedyhli/outline.nvim)
- [ ] harpoon (ThePrimeagen/harpoon) - Bounce between specific files more easily
- [ ] neotest (nvim-neotest/neotest.nvim) - An extensible framework for interacting with tests within neovim
- [ ] edgy (folke/edgy.nvim) - "Easily create and manage predefined window layouts, bringing a new edge to your workflow."
- [x] gitsigns.nvim - super fast git decorations 
- [ ] conform (stevearc/conform.nvim) - Formatter plugin
- [ ] nvim-lint
- [ ] dressing (stevearc/dressing.nvim) - "improve the default vim.ui interfaces"
- [x] indent-blankline.nvim (lukas-reineke/indent-blankline.nvim) - Indent guides for Neovim 

- [ ] vim fugitive (tpope/vim-fugitive) - A Git wrapper so awesome, it should be illegal


- [ ] create an "open in nvim" app that makes nvim in iterm the default editor for most files
- [ ] update iterm app icon to be a terminal with a neovim logo (see reddit post from u/danbee "I made a neovim icon for macos". The high contrast icon looks best)
- [ ] ncim-scissors - Make it easier to create and edit snippets



### From a reddit post with a cool setup 
- [x] navic (with barbecue) or lsp saga
- [ ] lightline - an alternative to lualine


ESLINT
- [ ] Check out the instructions within the lazy wiki. There's a pattern that uses `lazyvim.plugins.extras...` to install eslint functionality


### Learn to navigate buffers
- Use `H` and `L` if the buffer you want to go to is visually close to where you are
- Otherwise, if the buffer is open, use `<leader>,`
- For other files, use `<leader><space>`
- Close buffers you no longer need with < leader>bd
- `<leader>ss` to quickly jump to a function in the buffer you're on
- `<c-o>`, `<c-i>` and gd to navigate the code
- You can pin buffers with `<leader>bp` and delete all non pinned buffers with `<leader>bP`
- Add `TODO`s in files you want to work on in future but don't need now and delete their buffers, git will track them


### Make nvim your default editor
- [ ] Create an "open in nvim" app that makes nvim in iterm the default editor for most files
- [ ] Update iterm app icon to be a terminal with a neovim logo (see reddit post from u/danbee "I made a neovim icon for macos". The high contrast icon looks best)


### Motion Changes (I'm skeptical of these because I don't want to get used to motions that don't exist in vanilla vim)
- [ ] leap.nvim (ggandor / leap.vim) - neovim's answer to the mouse
- [ ] flash.nvim (folke/flash.nvim) - Navigate your code with search labels, enhanced character motions, and treesitter inegration
- [ ] flit (ggandor/flit.nvim) - Enhanced f/t motions for Leap

## Themes to Try
- [ ] gruvbox
- [ ] [embark theme](embark-theme.github.io) A deep inky purple theme leveraging bright colors. Designed to reduce visual clutter and help you focus on your code. Your editor can be both beautiful and useful. 
- [x] everforest (sainnhe/everforest)
- [x] tokyonight (folke/tokyonight.nvim)
- [ ] nord
- [ ] monakai / monokai-pro
- [ ] text-to-colorscheme - generate a colorscheme from a piece of text with ai


