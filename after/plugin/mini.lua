-- Better Around/Inside textobjects
require('mini.ai').setup { n_lines = 500 }
require('mini.surround').setup()

local statusline = require 'mini.statusline'
-- set use_icons to true if you have a Nerd Font
statusline.setup { use_icons = vim.g.have_nerd_font }
statusline.section_location = function()
    return '%2l:%-2v'
end

local miniclue = require('mini.clue')
miniclue.setup({
  triggers = {
    -- Leader triggers
    { mode = 'n', keys = '<Leader>' },
    { mode = 'x', keys = '<Leader>' },

    -- `g` key
    { mode = 'n', keys = 'g' },
    { mode = 'x', keys = 'g' },
  },

  clues = {
    -- Enhance this by adding descriptions for <Leader> mapping groups
    miniclue.gen_clues.g(),
    {
        { mode = 'n', keys = '<Leader>g', desc = 'Git' },
        { mode = 'n', keys = '<Leader>t', desc = 'Tab' },
        { mode = 'n', keys = '<Leader>b', desc = 'Buffer' },
        { mode = 'n', keys = '<Leader>f', desc = 'Files' },
        { mode = 'n', keys = '<Leader>s', desc = 'Search' },
    }
  },
})
