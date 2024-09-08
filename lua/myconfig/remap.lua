vim.g.mapleader = " "
vim.keymap.set("i","<c-g>", "<Esc>")
vim.keymap.set("n","<c-g>", ":q!") -- no enter for safe :)

vim.keymap.set("n","<leader>fd", ":Ex<Return>")

vim.keymap.set("n","<leader>a", '^')
vim.keymap.set("n","<leader>e", '$')


-- Window
vim.keymap.set("n","ss", ':split<Return>')
vim.keymap.set("n","sv", ':vsplit<Return>')
vim.keymap.set("n","sh", '<C-w>h')
vim.keymap.set("n","sk", '<C-w>k')
vim.keymap.set("n","sj", '<C-w>j')
vim.keymap.set("n","sl", '<C-w>l')
vim.keymap.set("n","sq", ':close<Return>')
--vim.keymap.set("n","<leader>w", '<C-w>w')

-- Movement
vim.keymap.set("n","<C-d>", '<C-d>zz')
vim.keymap.set("n","<C-u>", '<C-u>zz')
-- keep center when search
vim.keymap.set("n","n", 'nzzzv') 
vim.keymap.set("n","N", 'Nzzzv')


-- edit movement
vim.keymap.set("i","<c-a>", '<home>')
vim.keymap.set("i","<c-e>", '<end>')
vim.keymap.set("i","<c-d>", '<del>')
vim.keymap.set("i","<c-b>", '<Left>')
vim.keymap.set("i","<c-f>", '<Right>')
vim.keymap.set("i","<c-p>", '<Up>')
vim.keymap.set("i","<c-n>", '<Down>')

-- 'highline and move line
vim.keymap.set("v","J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v","K", ":m '<-2<CR>gv=gv")

-- Yank
vim.keymap.set("n","<leader>y", "\"+y")
vim.keymap.set("n","<leader>Y", "\"+Y")
vim.keymap.set("v","<leader>y", "\"+y")

-- buffer
vim.keymap.set("n","<leader>bb", ":ls<Return>")
vim.keymap.set("n","<leader>ba", ":args<Return>")
vim.keymap.set("n","<leader>bn", ":bnext<Return>")
vim.keymap.set("n","<leader>bp", ":bprevious<Return>")

-- tab
vim.keymap.set("n","<leader>tn", ":tabnew<Return>")
vim.keymap.set("n","<tab>", ":tabnext<Return>")
vim.keymap.set("n","<leader>tq", ":tabclose<Return>")
vim.keymap.set("n","<leader>tb", ":tab ball<Return>")

-- search
vim.keymap.set("n","<leader>h", ":nohlsearch<Return><C-l>")
vim.keymap.set("n","<leader>ss", "/")
vim.keymap.set("n","<leader>sr", ":%s/")

-- command
vim.keymap.set("n","!", ":!")

-- error list
vim.keymap.set("n","<leader><leader>", ":TroubleToggle<Return>")

-- relocate macro keys
vim.keymap.set("n","<F3>", "q")
vim.keymap.set("n","q", "<noh>")
vim.keymap.set("n","<F4>", "@")
vim.keymap.set("n","@", "<noh>")
