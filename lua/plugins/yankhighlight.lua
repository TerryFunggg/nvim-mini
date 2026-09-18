return {
	{
		"yankhighlight",
		lazy = false,
		config = function()
			local augroup = vim.api.nvim_create_augroup("HighlightYank", { clear = true })

			vim.api.nvim_create_autocmd("TextYankPost", {
				desc = 'Highlight when yanking (copying) text',
				group = augroup,
				callback = function()
					vim.highlight.on_yank()
				end,
			})
		end,
	},
}
