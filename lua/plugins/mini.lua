return {
	{
		"echasnovski/mini.nvim",
		config = function()
			-- Basic mini config
			require("mini.basics").setup({
				options = {
					extra_ui = true,
					win_borders = "double",
				},
				mappings = {
					windows = true,
				},
			})
			require("mini.extra").setup()
			-- Text editing
			require("mini.completion").setup({})
			-- like vim surround
			require("mini.surround").setup()
			-- gc comment, gcc comment line
			require("mini.comment").setup()
			-- smart symbol pair
			require("mini.pairs").setup()
			-- select text and move like fly
			require("mini.move").setup()
			-- split or join line/object
			require("mini.splitjoin").setup({
				mappings = {
					toggle = "gJ",
				},
			})

			-- General
			-- Navigation and pickers
			require("mini.pick").setup()
			require("mini.files").setup()
			-- vim.keymap.set("n", "<F2>", "<cmd>lua MiniFiles.open()<CR>", { desc = "File Explore" })
			vim.keymap.set("n", "<F2>", "<cmd>lua MiniExtra.pickers.explorer()<CR>", { desc = "File Explore" })
			require("mini.fuzzy").setup()

			-- Appearance
			-- highline the trailspace
			-- TODO: dsdad
			require("mini.statusline").setup()
			require("mini.trailspace").setup()
			require("mini.icons").setup()
			require("mini.indentscope").setup()
			require("mini.hipatterns").setup({
				highlighters = {
					todo = require("mini.extra").gen_highlighter.words(
						{ "TODO", "FIXME", "NOTE" },
						"MiniHipatternsTodo"
					),
				},
			})
			require("mini.animate").setup()
		end,
		keys = {
			{ "<leader>ff", "<cmd>Pick files<cr>", desc = "Find files" },
			{ "<leader>fg", "<cmd>Pick grep_live<cr>", desc = "Live grep" },
			{ "<leader>fb", "<cmd>Pick buffers<cr>", desc = "Find buffers" },
			{ "<leader>fh", "<cmd>Pick help<cr>", desc = "Find help" },
			{ "<leader><leader>", "<cmd>Pick diagnostic<cr>", desc = "Diagnostics" },
			{ "<leader>fr", "<cmd>Pick resume<cr>", desc = "Resume picker" },
			{ "<leader>fm", "<cmd>lua MiniExtra.pickers.marks()<cr>", desc = "Find Command" },
			{ "<leader>fc", "<cmd>lua MiniExtra.pickers.commands()<cr>", desc = "Find Command" },
		},
	},
}
