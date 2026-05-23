vim.g.mapleader = " "
vim.keymap.set("i", "<c-g>", "<Esc>", { desc = "Exit insert mode" })
vim.keymap.set("n", "<c-g>", "<cmd>q!<CR>", { desc = "Force quit" })

-- Window
vim.keymap.set("n", "ss", "<cmd>split<CR>", { desc = "Horizontal split" })
vim.keymap.set("n", "sv", "<cmd>vsplit<CR>", { desc = "Vertical split" })
vim.keymap.set("n", "sh", "<C-w>h", { desc = "Window left" })
vim.keymap.set("n", "sk", "<C-w>k", { desc = "Window up" })
vim.keymap.set("n", "sj", "<C-w>j", { desc = "Window down" })
vim.keymap.set("n", "sl", "<C-w>l", { desc = "Window right" })
vim.keymap.set("n", "sq", "<cmd>close<CR>", { desc = "Close window" })

-- Scroll
vim.keymap.set("n", "<C-d>", "<C-d>zz", { desc = "Scroll down, center" })
vim.keymap.set("n", "<C-u>", "<C-u>zz", { desc = "Scroll up, center" })
vim.keymap.set("n", "n", "nzzzv", { desc = "Next search, center" })
vim.keymap.set("n", "N", "Nzzzv", { desc = "Prev search, center" })

-- Edit movement (insert mode)
vim.keymap.set("i", "<c-a>", "<Home>", { desc = "Go to line start" })
vim.keymap.set("i", "<c-e>", "<End>", { desc = "Go to line end" })
vim.keymap.set("i", "<c-d>", "<Del>", { desc = "Delete forward" })
vim.keymap.set("i", "<c-b>", "<Left>", { desc = "Move left" })
vim.keymap.set("i", "<c-f>", "<Right>", { desc = "Move right" })
vim.keymap.set("i", "<c-p>", "<Up>", { desc = "Move up" })
vim.keymap.set("i", "<c-n>", "<Down>", { desc = "Move down" })

-- Move lines
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv", { desc = "Move line down" })
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv", { desc = "Move line up" })

-- Yank
vim.keymap.set("n", "<leader>y", '"+y', { desc = "Yank to system clipboard" })
vim.keymap.set("n", "<leader>Y", '"+Y', { desc = "Yank line to system clipboard" })
vim.keymap.set("v", "<leader>y", '"+y', { desc = "Yank to system clipboard" })

-- Buffer
vim.keymap.set("n", "<leader>bb", "<cmd>ls<CR>", { desc = "List buffers" })
vim.keymap.set("n", "<leader>ba", "<cmd>args<CR>", { desc = "List args" })
vim.keymap.set("n", "<leader>bn", "<cmd>bnext<CR>", { desc = "Next buffer" })
vim.keymap.set("n", "<leader>bp", "<cmd>bprevious<CR>", { desc = "Prev buffer" })

-- Tab
vim.keymap.set("n", "<leader>tn", "<cmd>tabnew<CR>", { desc = "New tab" })
vim.keymap.set("n", "<Tab>", "<cmd>tabnext<CR>", { desc = "Next tab" })
vim.keymap.set("n", "<leader>tq", "<cmd>tabclose<CR>", { desc = "Close tab" })
vim.keymap.set("n", "<leader>tb", "<cmd>tab ball<CR>", { desc = "Ball tab" })

-- Search
vim.keymap.set("n", "<leader>h", "<cmd>nohlsearch<CR><C-l>", { desc = "Clear search highlight" })
vim.keymap.set("n", "<leader>ss", "/", { desc = "Search" })
vim.keymap.set("n", "<leader>sr", ":%s/", { desc = "Search and replace" })

-- Command
vim.keymap.set("n", "!", ":!", { desc = "Shell command" })

-- Relocate macro keys
vim.keymap.set("n", "<F3>", "q", { desc = "Record macro" })
vim.keymap.set("n", "q", "<noh>", { desc = "nop" })
vim.keymap.set("n", "<F4>", "@", { desc = "Play macro" })
vim.keymap.set("n", "@", "<noh>", { desc = "nop" })
