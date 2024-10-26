require("telescope").setup {
    extensions = {
        ['ui-select'] = {
            require("telescope.themes").get_dropdown(),
        }
    }
}

pcall(require('telescope').load_extension, 'fzf')
pcall(require('telescope').load_extension, 'ui-select')

local builtin = require('telescope.builtin')
vim.keymap.set('n', '<leader>hh', builtin.help_tags, {desc = "Help"})
vim.keymap.set('n', '<leader>hk', builtin.keymaps, {desc = "Keys"})
vim.keymap.set('n', '<leader>ff', builtin.find_files, {desc = "Find Files"})
vim.keymap.set('n', '<leader>fb', builtin.buffers, {desc = "Find Buffer"})
vim.keymap.set('n', '<leader>fp', builtin.git_files, {desc = "Find Git"})
vim.keymap.set('n', '<leader>fg', builtin.live_grep, {desc = "Grep"})

vim.keymap.set('n', '<leader>/', function()
  builtin.current_buffer_fuzzy_find(require('telescope.themes').get_dropdown {
    winblend = 20,
    previewer = false,
  })
end, { desc = 'Fuzzily search' })

-- find my config files
vim.keymap.set('n', '<leader>fc', function()
  builtin.find_files { cwd = vim.fn.stdpath 'config' }
end, { desc = 'Search Nvim Config' })

