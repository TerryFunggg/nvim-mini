return {
	{
		"ibhagwan/fzf-lua",
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
		end,
	},
}
