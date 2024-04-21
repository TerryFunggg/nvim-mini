require 'nvim-treesitter.configs'.setup {
	-- A list of parser names, or "all" (the five listed parsers should always be installed)
	ensure_installed = {
		"html",
		"css",
		"ruby",
		"python",
		"javascript",
		"typescript",
		"c",
		"cpp",
		"lua",
		"vim",
		"vimdoc",
		"query",
		"go"
	},

	-- Install parsers synchronously (only applied to `ensure_installed`)
	sync_install = false,

	-- Automatically install missing parsers when entering buffer
	-- Recommendation: set to false if you don't have `tree-sitter` CLI installed locally
	auto_install = true,

	ignore_install = {},

	indent = {
		enable = true
	},

	highlight = {
		enable = true,

		additional_vim_regex_highlighting = false,
	},
}
