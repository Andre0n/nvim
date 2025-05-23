local opts = { noremap = true, silent = true }
local map = vim.api.nvim_set_keymap

vim.g.mapleader = " "

-- Move text up and down
map("v", "<A-j>", "<Esc>:m .+1<CR>==", opts)
map("v", "<A-k>", "<Esc>:m .-2<CR>==", opts)

map("i", "jk", "<ESC>", opts)
map("i", "kj", "<ESC>", opts)

-- Visual Block --
map("v", "<", "<gv", opts)
map("v", ">", ">gv", opts)
map("v", "p", '"_dP', opts)

-- Move text up and down
map("x", "J", ":move '>+1<CR>gv-gv", opts)
map("x", "K", ":move '<-2<CR>gv-gv", opts)
map("x", "<A-j>", ":move '>+1<CR>gv-gv", opts)
map("x", "<A-k>", ":move '<-2<CR>gv-gv", opts)
