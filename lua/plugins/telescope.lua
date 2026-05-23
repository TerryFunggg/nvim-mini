return {
	{
		"nvim-telescope/telescope.nvim",
		event = "VimEnter",
		branch = "0.2.x",
		dependencies = {
			"nvim-lua/plenary.nvim",
			{
				"nvim-telescope/telescope-fzf-native.nvim",
				build = "make",
				cond = function()
					return vim.fn.executable("make") == 1
				end,
			},
			{ "nvim-telescope/telescope-ui-select.nvim" },
			{ "nvim-tree/nvim-web-devicons", enabled = vim.g.have_nerd_font },
		},
		opts = {
			defaults = {
				file_ignore_patterns = {
					"node_modules/",
					"%.git/",
					"venv/",
					"vendor/",
					"__pycache__",
				},
			},
			pickers = {
				find_files = { theme = "ivy" },
				help_tags = { theme = "ivy" },
				keymaps = { theme = "ivy" },
				buffers = { theme = "ivy" },
				git_files = { theme = "ivy" },
				live_grep = { theme = "ivy" },
			},
			extensions = {
				["ui-select"] = {
					require("telescope.themes").get_dropdown(),
				},
			},
		},
		config = function(_, opts)
			local telescope = require("telescope")
			telescope.setup(opts)
			pcall(telescope.load_extension, "fzf")
			pcall(telescope.load_extension, "ui-select")

			local builtin = require("telescope.builtin")
			vim.keymap.set("n", "<leader>hh", builtin.help_tags, { desc = "Help" })
			vim.keymap.set("n", "<leader>hk", builtin.keymaps, { desc = "Keys" })
			vim.keymap.set("n", "<leader>ff", builtin.find_files, { desc = "Find Files" })
			vim.keymap.set("n", "<leader>fb", builtin.buffers, { desc = "Find Buffer" })
			vim.keymap.set("n", "<leader>fp", builtin.git_files, { desc = "Find Git" })
			vim.keymap.set("n", "<leader>fg", builtin.live_grep, { desc = "Grep" })

			vim.keymap.set("n", "<leader>/", function()
				builtin.current_buffer_fuzzy_find(require("telescope.themes").get_dropdown({
					winblend = 20,
					previewer = false,
				}))
			end, { desc = "Fuzzily search" })

			vim.keymap.set("n", "<leader>fc", function()
				builtin.find_files({ cwd = vim.fn.stdpath("config") })
			end, { desc = "Search Nvim Config" })
		end,
	},
}
