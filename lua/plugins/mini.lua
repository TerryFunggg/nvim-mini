return {
	{
		"echasnovski/mini.nvim",
		config = function()
			require("mini.ai").setup({ n_lines = 500 })
			require("mini.surround").setup()

			local statusline = require("mini.statusline")
			statusline.setup({ use_icons = vim.g.have_nerd_font })
			statusline.section_location = function()
				return "%2l:%-2v"
			end

			require("mini.pick").setup()
		end,
		keys = {
			{ "<leader>ff", function() require("mini.pick").builtin.files() end, desc = "Find files" },
			{ "<leader>fg", function() require("mini.pick").builtin.grep_live() end, desc = "Live grep" },
			{ "<leader>fb", function() require("mini.pick").builtin.buffers() end, desc = "Find buffers" },
			{ "<leader>fh", function() require("mini.pick").builtin.help() end, desc = "Help tags" },
		},
	},
}
