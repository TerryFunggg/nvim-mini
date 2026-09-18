return {
	{
		"echasnovski/mini.nvim",
		config = function()
			-- Text editing
			require("mini.ai").setup({ n_lines = 500 })
			require("mini.surround").setup()
			require("mini.comment").setup()
			require("mini.pairs").setup()
			require("mini.move").setup()
			require("mini.operators").setup()
			require("mini.splitjoin").setup()
			require("mini.trailspace").setup()

			-- Navigation and pickers
			require("mini.pick").setup()
			require("mini.files").setup()
			require("mini.fuzzy").setup()
			require("mini.extra").setup()

			-- UI
			local statusline = require("mini.statusline")
			statusline.setup({ use_icons = vim.g.have_nerd_font })
			statusline.section_location = function()
				return "%2l:%-2v"
			end
			require("mini.icons").setup()
			require("mini.indentscope").setup()
			require("mini.cursorword").setup()
			require("mini.hipatterns").setup()
			require("mini.animate").setup()
			require("mini.tabline").setup()
			require("mini.starter").setup()
		end,
		keys = {
			{ "<leader>ff", "<cmd>Pick files<cr>", desc = "Find files" },
			{ "<leader>fg", "<cmd>Pick grep_live<cr>", desc = "Live grep" },
			{ "<leader>fb", "<cmd>Pick buffers<cr>", desc = "Find buffers" },
			{ "<leader>fh", "<cmd>Pick help<cr>", desc = "Find help" },
			{ "<leader>fe", "<cmd>Pick explorer<cr>", desc = "File explorer" },
			{ "<leader>fd", "<cmd>Pick diagnostic<cr>", desc = "Diagnostics" },
			{ "<leader>fr", "<cmd>Pick resume<cr>", desc = "Resume picker" },
		},
	},
}
