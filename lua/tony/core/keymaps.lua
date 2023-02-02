local keymap = vim.keymap -- for conciseness
vim.g.mapleader = " "

--general keymaps

keymap.set("i", "jk", "<ESC>") --Enter normal mode with 'jk'

keymap.set("n", "x", '"_x') -- delete doesn't get copied to clipboard

-- window management
keymap.set("n", "<leader>sv", "<C-w>v") -- split window vertically
keymap.set("n", "<leader>sh", "<C-w>s") -- split window horizontally
keymap.set("n", "<leader>se", "<C-w>=") -- make split windows equal width & height
keymap.set("n", "<leader>sx", ":close<CR>") -- close current split window

keymap.set("n", "<leader>to", ":tabnew<CR>") -- open new tab
keymap.set("n", "<leader>tx", ":tabclose<CR>") -- close current tab
keymap.set("n", "<leader>tn", ":tabn<CR>") --  go to next tab
keymap.set("n", "<leader>tp", ":tabp<CR>") --  go to previous tabeymap.set()

keymap.set("n", "<leader>wh", "<C-w>h")
keymap.set("n", "<leader>wl", "<C-w>l")
--Primeagen keymaps--

--move while highlighted commands
keymap.set("v", "J", ":m '>+1<CR>gv=gv")
keymap.set("v", "K", ":m '<-2<CR>gv=gv")

-- Cursor stays in place when appending line
keymap.set("n", "J", "mzJ'z")

-- Half page jumping stays, cursor stays in the middle
keymap.set("n", "<C-d>", "<C-d>zz")
keymap.set("n", "<C-u>", "<C-u>zz")

--Search terms stay in the middle
keymap.set("n", "n", "nzzzv")
keymap.set("n", "N", "Nzzzv")

-- paste over highlighted term wihtout losing the term
keymap.set("x", "<leader>p", "\"_dp")

-- yank to system clipboard with leader y
keymap.set("n", "<leader>y", "\"+y")
keymap.set("v", "<leader>y", "\"+y")
keymap.set("n", "<leader>Y", "\"+Y")

-- delete to the void
keymap.set("n", "<leader>d", "\"_d")
keymap.set("v", "<leader>d", "\"_d")

-- protects against capital Q recording a macro
vim.keymap.set("n", "Q", "<nop>")

--replace word you are on
vim.keymap.set("n", "<leader>s", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]])

-- Plugin keymaps
-- NvimTree
keymap.set("n", "<leader>e", ":NvimTreeToggle<CR>")

--Telescope is in the telescope plugin folder


