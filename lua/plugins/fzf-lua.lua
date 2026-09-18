return {
  {
    "ibhagwan/fzf-lua",
    event = "VimEnter",
    dependencies = {
      "nvim-tree/nvim-web-devicons",
    },
    keys = {
      { "<leader>ff", "<cmd>FzfLua files<cr>", desc = "Find Files" },
      { "<leader>fb", "<cmd>FzfLua buffers<cr>", desc = "Find Buffer" },
      { "<leader>fg", "<cmd>FzfLua live_grep<cr>", desc = "Grep" },
      { "<leader>fp", "<cmd>FzfLua git_files<cr>", desc = "Find Git" },
      { "<leader>fh", "<cmd>FzfLua help_tags<cr>", desc = "Help" },
      { "<leader>fk", "<cmd>FzfLua keymaps<cr>", desc = "Keys" },
      { "<leader>fc", "<cmd>FzfLua files cwd=" .. vim.fn.stdpath("config") .. "<cr>", desc = "Search Nvim Config" },
      { "<leader>/", "<cmd>FzfLua blines<cr>", desc = "Fuzzily search" },
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
  },
}
