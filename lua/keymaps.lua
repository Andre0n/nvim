local opts = { noremap = true, silent = true }
local map = vim.api.nvim_set_keymap

vim.g.mapleader = ' '

-- Resize with arrows
map('n', '<C-Up>', ':resize -2<CR>', opts)
map('n', '<C-Down>', ':resize +2<CR>', opts)
map('n', '<C-Left>', ':vertical resize -2<CR>', opts)
map('n', '<C-Right>', ':vertical resize +2<CR>', opts)

-- Naviagate buffers
map('n', '<leader>bn', ':bnext<CR>', opts)
map('n', '<leader>bp', ':bprevious<CR>', opts)
map('n', '<leader>bd', ':bd<CR>', opts)

-- Nagiate tabs
map('n', '<leader>tt', ':tabnew<CR>', opts)
map('n', '<leader>tn', ':tabnext<CR>', opts)
map('n', '<leader>tp', ':tabprevious<CR>', opts)
map('n', '<leader>tc', ':tabclose<CR>', opts)

-- Move text up and down
map('v', '<A-j>', '<Esc>:m .+1<CR>==', opts)
map('v', '<A-k>', '<Esc>:m .-2<CR>==', opts)

map('i', 'jk', '<ESC>', opts)
map('i', 'kj', '<ESC>', opts)

map('v', '<', '<gv', opts)
map('v', '>', '>gv', opts)
map('v', 'p', '"_dP', opts)

-- Visual Block --
-- Move text up and down
map('x', 'J', ":move '>+1<CR>gv-gv", opts)
map('x', 'K', ":move '<-2<CR>gv-gv", opts)
map('x', '<A-j>', ":move '>+1<CR>gv-gv", opts)
map('x', '<A-k>', ":move '<-2<CR>gv-gv", opts)

map('i', "'", "''<Left>", opts)
map('i', '"', '""<Left>', opts)
map('i', '(', '()<Left>', opts)
map('i', '[', '[]<Left>', opts)
map('i', '{', '{}<Left>', opts)

-- Python macros
map('n', '<leader>pimi', 'iif __name__ == "__main__":<CR>    ', opts)
map('n', '<leader>pimf', 'idef @():<CR>@<Esc>:/@<CR>nn', opts)
