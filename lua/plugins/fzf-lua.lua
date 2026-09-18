return {
	{
		"ibhagwan/fzf-lua.nvim",
		event = "VimEnter",
		dependencies = {
			"nvim-tree/nvim-web-devicons",
		},
		opts = {
			-- Match the old Telescope ivy look where it makes sense
			winopts = {
				height = 0.85,
				width = 0.80,
				row = 0.35,
				col = 0.50,
				border = "rounded",
				preview = {
					vertical = "down:45%",
					horizontal = "right:50%",
				},
			},
			files = {
				file_ignore_patterns = {
					"node_modules/",
					"%.git/",
					"venv/",
					"vendor/",
					"__pycache__",
				},
			},
			grep = {
				file_ignore_patterns = {
					"node_modules/",
					"%.git/",
					"venv/",
					"vendor/",
					"__pycache__",
				},
			},
		},
		config = function(_, opts)
			local fzf = require("fzf-lua")
			fzf.setup(opts)

			-- Keep the same leader keys you had with Telescope
			vim.keymap.set("n", "<leader>hh", fzf.help_tags, { desc = "Help" })
			vim.keymap.set("n", "<leader>hk", fzf.keymaps, { desc = "Keys" })
			vim.keymap.set("n", "<leader>ff", fzf.files, { desc = "Find Files" })
			vim.keymap.set("n", "<leader>fb", fzf.buffers, { desc = "Find Buffer" })
			vim.keymap.set("n", "<leader>fp", fzf.git_files, { desc = "Find Git" })
			vim.keymap.set("n", "<leader>fg", fzf.live_grep, { desc = "Grep" })

			vim.keymap.set("n", "<leader>/", function()
				fzf.blines({ winopts = { height = 0.40, preview = { hidden = "hidden" } } })
			end, { desc = "Fuzzily search" })

			vim.keymap.set("n", "<leader>fc", function()
				fzf.files({ cwd = vim.fn.stdpath("config") })
			end, { desc = "Search Nvim Config" })
		end,
	},
}
