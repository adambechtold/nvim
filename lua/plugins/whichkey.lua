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
			-- Illuminate - Highlight other references to the text your cursor is on
			["]r"] = { "<cmd>lua require('illuminate').goto_next_reference{wrap=true}<CR>", "Next Reference" },
			["[r"] = { "<cmd>lua require('illuminate').goto_prev_reference{wrap=true}<CR>", "Previous Reference" },

			-- Move between buffers
			["[b"] = { ":bp<CR>", "Previous Buffer" },
			["]b"] = { ":bn<CR>", "Next Buffer" },

			-- Telescope
			["<leader> "] = { "<cmd>Telescope find_files<CR>", "Find Files" },
			["<leader>fg"] = { "<cmd>Telescope live_grep<CR>", "Live Grep" },
			["<leader>fb"] = { "<cmd>Telescope buffers<CR>", "Buffers" },
			["<leader>fc"] = { "<cmd>Telescope commands<CR>", "Commands" },
			["<leader>fh"] = { "<cmd>Telescope help_tags<CR>", "Help Tags" },
			["<leader>fs"] = { "<cmd>Telescope search_history<CR>", "Search History" },
			-- todo-comments
			["<leader>ft"] = { "<cmd>TodoTelescope<CR>", "Search TODOs" },

			-- Git Signs - Review changes inline
			["<leader>g"] = "Git",
			["<leader>gs"] = { "<cmd>lua require('gitsigns').stage_hunk()<CR>", "Stage Hunk" },
			["<leader>gu"] = { "<cmd>lua require('gitsigns').undo_stage_hunk()<CR>", "Undo Stage Hunk" },
			["<leader>gr"] = { "<cmd>lua require('gitsigns').reset_hunk()<CR>", "Reset Hunk" },
			["<leader>gR"] = { "<cmd>lua require('gitsigns').reset_buffer()<CR>", "Reset Buffer" },
			["<leader>gp"] = { "<cmd>lua require('gitsigns').preview_hunk()<CR>", "Preview Hunk" },
			["<leader>gb"] = { "<cmd>lua require('gitsigns').blame_line()<CR>", "Blame Line" },
			["<leader>gt"] = { "<cmd>:Gitsigns toggle_current_line_blame<CR>", "Toggle Git Blame Current Line" },
			["]h"] = { "<cmd>lua require('gitsigns').next_hunk()<CR>", "Next Hunk" },
			["[h"] = { "<cmd>lua require('gitsigns').prev_hunk()<CR>", "Previous Hunk" },
			["<leader>gl"] = { "<cmd>LazyGit<CR>", "LazyGit" },

			-- Terminal - Update - 2024-04-09 - I usually use tmux for terminal
			--[[
      ["<leader>t"] = "Terminal",
      ["<leader>tv"] = { "<cmd>vsplit term://zsh<CR>i", "New Terminal Vertical Split" },
      ["<leader>th"] = { "<cmd>split<CR><c-w>j <cmd>term<CR>i", "New Terminal Horizontal Split" },
      ["<leader>tt"] = { "<cmd>tabnew term://zsh<CR>", "New Terminal Tab" },
      ["<leader>tq"] = { "<cmd>bd!<CR>q<CR>", "Close Current Terminal" },
      ]]
			-- Reminder: To escape terminal mode, use <C-\><C-n>

			-- Navigate Buffers
			["<leader>b"] = "Buffers",
			["bl"] = { "<cmd>ls<CR>", "List Buffers" },
			["<leader>bd"] = "Delete Buffer Options",
			["<leader>bdo"] = { "<cmd>%bd|e#|bd#<CR>", "Delete Other Buffers" },
			--[[  Explanation
            %bd - close all buffers
            | (pipe, to run multiple commands
            e# - open last editor
            bd# - delete current buffer]]

			-- Settings
			["<leader>s"] = "Settings",
			-- Display Colorscheme / Lightmode & Darkmode
			["<leader>scd"] = { "<cmd>set background=dark<CR>", "Dark Background" },
			["<leader>scl"] = { "<cmd>set background=light<CR>", "Light Background" },
			-- Themes
			["<leader>sc"] = "Colorschemes",
			-- Theme / Everforest
			["<leader>sce"] = {
				string.format("<cmd>lua vim.cmd [[colorscheme everforest]]<CR>%s", lualineCmd("everforest")),
				"Everforest",
			},
			-- Theme / Catppuccin
			["<leader>scc"] = {
				string.format("<cmd>colorscheme catppuccin<CR>%s", lualineCmd("darcula")),
				"Catppuccin",
			},
			-- Theme / Tokyonight
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
			-- Theme / Solarized
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

			-- Spelling
			["<leader>ss"] = "Spelling",
			["<leader>sst"] = { "<cmd>set spell! spelllang=en_us<CR>", "Toggle Spelling" },

			-- Fold Modes
			["<leader>sz"] = "Folds",
			["<leader>szm"] = { "<cmd>set foldmethod=manual<CR>", "Manual" },
			["<leader>szc"] = { "<cmd>set foldmethod=indent<CR>", "Indent" },
			["<leader>sza"] = { "<cmd>set foldmethod=syntax<CR>", "Syntax" },

			-- Toggle Copilot
			["<leader>sece"] = { "<cmd>Copilot enable<CR>", "Enable Copilot" },
			["<leader>secd"] = { "<cmd>Copilot disable<CR>", "Disable Copilot" },

			-- Editor
			["<leader>se"] = "Editor",
			["<leader>sez"] = { "<cmd>Goyo<CR>", "Zen Mode" },
			["<leader>sev"] = { "<cmd>set number!<CR>", "Toggle Line Numbers" },
			["<leader>seb"] = { "<cmd>set relativenumber!<CR>", "Toggle Relative Line Numbers" },
			["<leader>seu"] = { "<cmd>set cursorline!<CR>", "Toggle Cursor Line" },
			["<leader>sej"] = { "<cmd>set cursorcolumn!<CR>", "Toggle Cursor Column" },
			["<leader>sef"] = { "<cmd>Format<CR>", "Format" },
			["<leader>seh"] = { "<cmd>set hlsearch!<CR>", "Toggle Highlight Search" },
			["<leader>sew"] = { "<cmd>set wrap!<CR>", "Toggle Wrap" },
			["<leader>ser"] = { "<cmd>set ruler!<CR>", "Toggle Ruler" },

			-- oil
			["<leader>o"] = "Oil",
			["<leader>oo"] = { "<cmd>Oil<CR>", "Oil" },
		})
	end,
}
