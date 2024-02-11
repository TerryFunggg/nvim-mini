local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

require("lazy").setup({
  { 'rose-pine/neovim', name = 'rose-pine' },
  'nvim-lua/plenary.nvim',
  {'nvim-telescope/telescope.nvim', tag = '0.1.4'},
  {'nvim-treesitter/nvim-treesitter', cmd = 'TSUpdate'},
  {
	  "mbbill/undotree" ,
	  keys = {
		  "<leader>u", "<cmd>UndotreeToggle<cr>", desc = "UndoTree"
	  },
  },
  {'VonHeikemen/lsp-zero.nvim', branch = 'v3.x'},
  {'williamboman/mason.nvim'},
  {'williamboman/mason-lspconfig.nvim'},
  {'neovim/nvim-lspconfig'},
  {'hrsh7th/cmp-nvim-lsp'},
  {'hrsh7th/nvim-cmp'},
  {'saadparwaiz1/cmp_luasnip'},
  {'hrsh7th/cmp-path'},
  {'hrsh7th/cmp-cmdline'},
  {
	"L3MON4D3/LuaSnip",
    dependencies = { "rafamadriz/friendly-snippets" },
	-- follow latest release.
	version = "v2.*", -- Replace <CurrentMajor> by the latest released major (first number of latest release)
	-- install jsregexp (optional!).
	build = "make install_jsregexp"
  },
  {
    'numToStr/Comment.nvim',
    lazy = false,
  },
  { "lukas-reineke/indent-blankline.nvim", main = "ibl", opts = {} },
  {
    "kylechui/nvim-surround",
    version = "*", -- Use for stability; omit to use `main` branch for the latest features
    event = "VeryLazy",
    config = function()
        require("nvim-surround").setup({
            -- Configuration here, or leave empty to use defaults
        })
    end
  },
  {
    'windwp/nvim-autopairs',
    event = "InsertEnter",
    opts = {} -- this is equalent to setup({}) function
  },
  {
    "folke/trouble.nvim",
    dependencies = { "nvim-tree/nvim-web-devicons" },
  }
})
