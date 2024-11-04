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
		wk.add({
			{ "<leader> ", "<cmd>Telescope find_files<CR>", desc = "Find Files" },
			{ "<leader>b", desc = "Buffers" },
			{ "<leader>bd", desc = "Delete Buffer Options" },
			{ "<leader>bdo", "<cmd>%bd|e#|bd#<CR>", desc = "Delete Other Buffers" },
			{ "<leader>fb", "<cmd>Telescope buffers<CR>", desc = "Buffers" },
			{ "<leader>fc", "<cmd>Telescope commands<CR>", desc = "Commands" },
			{ "<leader>fg", "<cmd>Telescope live_grep<CR>", desc = "Live Grep" },
			{ "<leader>fh", "<cmd>Telescope help_tags<CR>", desc = "Help Tags" },
			{ "<leader>fo", "<cmd>TodoTelescope<CR>", desc = "Search TODOs" },
			{ "<leader>fs", "<cmd>Telescope search_history<CR>", desc = "Search History" },
			{ "<leader>g", desc = "Git" },
			{ "<leader>gR", "<cmd>lua require('gitsigns').reset_buffer()<CR>", desc = "Reset Buffer" },
			{ "<leader>gb", "<cmd>lua require('gitsigns').blame_line()<CR>", desc = "Blame Line" },
			{ "<leader>gl", "<cmd>LazyGit<CR>", desc = "LazyGit" },
			{ "<leader>gp", "<cmd>lua require('gitsigns').preview_hunk()<CR>", desc = "Preview Hunk" },
			{ "<leader>gr", "<cmd>lua require('gitsigns').reset_hunk()<CR>", desc = "Reset Hunk" },
			{ "<leader>gs", "<cmd>lua require('gitsigns').stage_hunk()<CR>", desc = "Stage Hunk" },
			{ "<leader>gt", "<cmd>:Gitsigns toggle_current_line_blame<CR>", desc = "Toggle Git Blame Current Line" },
			{ "<leader>gu", "<cmd>lua require('gitsigns').undo_stage_hunk()<CR>", desc = "Undo Stage Hunk" },
			{ "<leader>o", desc = "Oil" },
			{ "<leader>oo", "<cmd>Oil<CR>", desc = "Oil" },
			{ "<leader>s", desc = "Settings" },
			{ "<leader>sc", desc = "Colorschemes" },
			{
				"<leader>scc",
				"<cmd>colorscheme catppuccin<CR><cmd>lua require('lualine').setup({options = {theme = 'darcula'}})<CR>",
				desc = "Catppuccin",
			},
			{ "<leader>scd", "<cmd>set background=dark<CR>", desc = "Dark Background" },
			{
				"<leader>sce",
				"<cmd>lua vim.cmd [[colorscheme everforest]]<CR><cmd>lua require('lualine').setup({options = {theme = 'everforest'}})<CR>",
				desc = "Everforest",
			},
			{ "<leader>scl", "<cmd>set background=light<CR>", desc = "Light Background" },
			{ "<leader>scs", desc = "Solarized" },
			{
				"<leader>scsd",
				"<cmd>set background=dark<CR><cmd>colorscheme solarized<CR><cmd>lua require('lualine').setup({options = {theme = 'solarized_dark'}})<CR>",
				desc = "Solarized Dark",
			},
			{
				"<leader>scsl",
				"<cmd>set background=light<CR><cmd>colorscheme solarized<CR><cmd>lua require('lualine').setup({options = {theme = 'solarized_light'}})<CR>",
				desc = "Solarized Light",
			},
			{ "<leader>sct", desc = "Tokyonight (multiple options)" },
			{
				"<leader>sct<CR>",
				"<cmd>colorscheme tokyonight-storm<CR><cmd>lua require('lualine').setup({options = {theme = 'darcula'}})<CR>",
				desc = "Tokyonight Storm (darker)",
			},
			{
				"<leader>sctd",
				"<cmd>colorscheme tokyonight-day<CR><cmd>lua require('lualine').setup({options = {theme = 'darcula'}})<CR>",
				desc = "Tokyonight (light)",
			},
			{
				"<leader>sctm",
				"<cmd>colorscheme tokyonight-moon<CR><cmd>lua require('lualine').setup({options = {theme = 'darcula'}})<CR>",
				desc = "Tokyonight Moon (dark-ish)",
			},
			{
				"<leader>sctn",
				"<cmd>colorscheme tokyonight-night<CR><cmd>lua require('lualine').setup({options = {theme = 'darcula'}})<CR>",
				desc = "Tokyonight Night (darkest)",
			},
			{
				"<leader>scts",
				"<cmd>colorscheme tokyonight-storm<CR><cmd>lua require('lualine').setup({options = {theme = 'darcula'}})<CR>",
				desc = "Tokyonight Storm (darker)",
			},
			{ "<leader>se", desc = "Editor" },
			{ "<leader>seb", "<cmd>set relativenumber!<CR>", desc = "Toggle Relative Line Numbers" },
			{ "<leader>secd", "<cmd>Copilot disable<CR>", desc = "Disable Copilot" },
			{ "<leader>sece", "<cmd>Copilot enable<CR>", desc = "Enable Copilot" },
			{ "<leader>sef", "<cmd>Format<CR>", desc = "Format" },
			{ "<leader>seh", "<cmd>set hlsearch!<CR>", desc = "Toggle Highlight Search" },
			{ "<leader>sej", "<cmd>set cursorcolumn!<CR>", desc = "Toggle Cursor Column" },
			{ "<leader>ser", "<cmd>set ruler!<CR>", desc = "Toggle Ruler" },
			{ "<leader>seu", "<cmd>set cursorline!<CR>", desc = "Toggle Cursor Line" },
			{ "<leader>sev", "<cmd>set number!<CR>", desc = "Toggle Line Numbers" },
			{ "<leader>sew", "<cmd>set wrap!<CR>", desc = "Toggle Wrap" },
			{ "<leader>sez", "<cmd>Goyo<CR>", desc = "Zen Mode" },
			{ "<leader>ss", desc = "Spelling" },
			{ "<leader>sst", "<cmd>set spell! spelllang=en_us<CR>", desc = "Toggle Spelling" },
			{ "<leader>sz", desc = "Folds" },
			{ "<leader>sza", "<cmd>set foldmethod=syntax<CR>", desc = "Syntax" },
			{ "<leader>szc", "<cmd>set foldmethod=indent<CR>", desc = "Indent" },
			{ "<leader>szm", "<cmd>set foldmethod=manual<CR>", desc = "Manual" },
			{ "[b", ":bp<CR>", desc = "Previous Buffer" },
			{ "[h", "<cmd>lua require('gitsigns').prev_hunk()<CR>", desc = "Previous Hunk" },
			{ "[r", "<cmd>lua require('illuminate').goto_prev_reference{wrap=true}<CR>", desc = "Previous Reference" },
			{ "]b", ":bn<CR>", desc = "Next Buffer" },
			{ "]h", "<cmd>lua require('gitsigns').next_hunk()<CR>", desc = "Next Hunk" },
			{ "]r", "<cmd>lua require('illuminate').goto_next_reference{wrap=true}<CR>", desc = "Next Reference" },
			{ "bl", "<cmd>ls<CR>", desc = "List Buffers" },
		}
)
	end,
}
