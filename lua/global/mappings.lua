local opts = { noremap = true, silent = true }

-- Buffer movimentation
vim.api.nvim_set_keymap("n", "<C-h>", "<C-w>h", opts)
vim.api.nvim_set_keymap("n", "<C-k>", "<C-w>k", opts)
vim.api.nvim_set_keymap("n", "<C-j>", "<C-w>j", opts)
vim.api.nvim_set_keymap("n", "<C-l>", "<C-w>l", opts)

-- Smart Indent
vim.api.nvim_set_keymap("n", "<", "<gv", opts)
vim.api.nvim_set_keymap("v", "<", "<gv", opts)
vim.api.nvim_set_keymap("n", ">", ">gv", opts)
vim.api.nvim_set_keymap("v", ">", ">gv", opts)

-- Safe delete
vim.api.nvim_set_keymap("n", "d", '"_d', opts)
vim.api.nvim_set_keymap("v", "d", '"_d', opts)

-- NvimTree
vim.api.nvim_set_keymap("n", "<C-n>", ":NvimTreeToggle <CR>", opts)

-- LSP
vim.api.nvim_set_keymap("n", "<space>e", ":lua vim.diagnostic.open_float() <CR>", opts)
vim.api.nvim_set_keymap("n", "[d", ":lua vim.diagnostic.goto_prev() <CR>", opts)
vim.api.nvim_set_keymap("n", "]d", ":lua vim.diagnostic.goto_next() <CR>", opts)
vim.api.nvim_set_keymap("n", "<space>q", ":lua vim.diagnostic.setloclist() <CR>", opts)

vim.api.nvim_set_keymap("n", "gD", ":lua vim.lsp.buf.declaration() <CR>", opts)
vim.api.nvim_set_keymap("n", "gd", ":lua vim.lsp.buf.definition() <CR>", opts)
vim.api.nvim_set_keymap("n", "K", ":lua vim.lsp.buf.hover() <CR>", opts)
vim.api.nvim_set_keymap("n", "gi", ":lua vim.lsp.buf.implementation() <CR>", opts)
vim.api.nvim_set_keymap("n", "<space>k", ":lua vim.lsp.buf.signature_help() <CR>", opts)
vim.api.nvim_set_keymap("n", "<space>wa", ":lua vim.lsp.buf.add_workspace_folder() <CR>", opts)
vim.api.nvim_set_keymap("n", "<space>wr", ":lua vim.lsp.buf.remove_workspace_folder() <CR>", opts)

vim.api.nvim_set_keymap("n", "<space>D", ":lua vim.lsp.buf.type_definition() <CR>", opts)
vim.api.nvim_set_keymap("n", "<space>rn", ":lua vim.lsp.buf.rename() <CR>", opts)
vim.api.nvim_set_keymap("n", "<space>ca", ":lua vim.lsp.buf.code_action() <CR>", opts)
vim.api.nvim_set_keymap("n", "gr", ":lua vim.lsp.buf.references() <CR>", opts)
vim.api.nvim_set_keymap("n", "<space>f", ":lua vim.lsp.buf.formatting() <CR>", opts)

-- Comment Toggler
vim.api.nvim_set_keymap("n", "<M-;>", ":CommentToggle <CR>", opts)
vim.api.nvim_set_keymap("v", "<M-;>", ":CommentToggle <CR>", opts)

-- Lazygit
vim.api.nvim_set_keymap("n", "<M-g>", ":LazyGit<CR>", opts)

-- Build
vim.api.nvim_set_keymap("n", "<C-b>", ":lua RunBuild() <CR>", opts)

-- Terminal
vim.api.nvim_set_keymap(
    "n",
    "<leader>t",
    ":execute 15 .. 'new +terminal' | let b:term_type = 'hori' | startinsert <CR>",
    opts
)
vim.api.nvim_set_keymap(
    "n",
    "<leader>v",
    ":execute 'vnew +terminal' | let b:term_type = 'vert' | startinsert <CR>",
    opts
)

-- Buffer Navigation
vim.api.nvim_set_keymap("n", "<Tab>", ":BufferLineCycleNext<CR>", opts)
vim.api.nvim_set_keymap("n", "<S-Tab>", ":BufferLineCyclePrev<CR>", opts)
vim.api.nvim_set_keymap("n", "<leader>x", ":BufferLinePickClose<CR>", opts)

-- Format Code Keys
vim.api.nvim_set_keymap("n", "<leader>f", ":Format<CR>", opts)
