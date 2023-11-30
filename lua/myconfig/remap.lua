vim.g.mapleader = " "
vim.keymap.set("i","<c-g>", "<Esc>")
vim.keymap.set("n","<c-g>", ":q!") -- no enter for safe :)

vim.keymap.set("n","<leader>fd", ":Ex<Return>")

vim.keymap.set("n","<leader>a", '^')
vim.keymap.set("n","<leader>e", '$')

-- Window
vim.keymap.set("n","ss", ':split<Return>')
vim.keymap.set("n","sv", ':vsplit<Return>')
vim.keymap.set("n","<leader>w", '<C-w>w')
vim.keymap.set("n","sh", '<C-w>h')
vim.keymap.set("n","sk", '<C-w>k')
vim.keymap.set("n","sj", '<C-w>j')
vim.keymap.set("n","sl", '<C-w>l')
vim.keymap.set("n","sq", ':close<Return>')

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

