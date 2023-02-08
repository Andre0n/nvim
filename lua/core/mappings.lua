local options = { noremap = true, silent = true }

-- Buffer movimentation
vim.api.nvim_set_keymap("n", "<C-h>", "<C-w>h", options)
vim.api.nvim_set_keymap("n", "<C-k>", "<C-w>k", options)
vim.api.nvim_set_keymap("n", "<C-j>", "<C-w>j", options)
vim.api.nvim_set_keymap("n", "<C-l>", "<C-w>l", options)

-- Smart Indent
vim.api.nvim_set_keymap("n", "<", "<gv", options)
vim.api.nvim_set_keymap("v", "<", "<gv", options)
vim.api.nvim_set_keymap("n", ">", ">gv", options)
vim.api.nvim_set_keymap("v", ">", ">gv", options)

-- Safe delete
vim.api.nvim_set_keymap("n", "d", '"_d', options)
vim.api.nvim_set_keymap("v", "d", '"_d', options)

-- NvimTree
vim.api.nvim_set_keymap("n", "<C-n>", ":NvimTreeToggle <CR>", options)

-- LSP
vim.api.nvim_set_keymap("n", "<leader>e", ":lua vim.diagnostic.open_float() <CR>", options)
vim.api.nvim_set_keymap("n", "[d", ":lua vim.diagnostic.goto_prev() <CR>", options)
vim.api.nvim_set_keymap("n", "]d", ":lua vim.diagnostic.goto_next() <CR>", options)
vim.api.nvim_set_keymap("n", "<leader>q", ":lua vim.diagnostic.setloclist() <CR>", options)

vim.api.nvim_set_keymap("n", "gD", ":lua vim.lsp.buf.declaration() <CR>", options)
vim.api.nvim_set_keymap("n", "gd", ":lua vim.lsp.buf.definition() <CR>", options)
vim.api.nvim_set_keymap("n", "K", ":lua vim.lsp.buf.hover() <CR>", options)
vim.api.nvim_set_keymap("n", "gi", ":lua vim.lsp.buf.implementation() <CR>", options)
vim.api.nvim_set_keymap("n", "<leader>k", ":lua vim.lsp.buf.signature_help() <CR>", options)
vim.api.nvim_set_keymap("n", "<leader>wa", ":lua vim.lsp.buf.add_workspace_folder() <CR>", options)
vim.api.nvim_set_keymap("n", "<leader>wr", ":lua vim.lsp.buf.remove_workspace_folder() <CR>", options)

vim.api.nvim_set_keymap("n", "<leader>D", ":lua vim.lsp.buf.type_definition() <CR>", options)
vim.api.nvim_set_keymap("n", "<leader>rn", ":lua vim.lsp.buf.rename() <CR>", options)
vim.api.nvim_set_keymap("n", "<leader>ca", ":lua vim.lsp.buf.code_action() <CR>", options)
vim.api.nvim_set_keymap("n", "gr", ":lua vim.lsp.buf.references() <CR>", options)
vim.api.nvim_set_keymap("n", "<leader>lf", ":lua vim.lsp.buf.format({async = true })<CR>", options)

-- Comment Toggler
vim.api.nvim_set_keymap("n", "<M-;>", ":CommentToggle <CR>", options)
vim.api.nvim_set_keymap("v", "<M-;>", ":CommentToggle <CR>", options)

-- Lazygit
vim.api.nvim_set_keymap("n", "<M-g>", ":LazyGit<CR>", options)

-- Build
vim.api.nvim_set_keymap("n", "<C-b>", ":lua RunBuild() <CR>", options)

-- Terminal
vim.api.nvim_set_keymap(
	"n",
	"<leader>t",
	":execute 15 .. 'new +terminal' | let b:term_type = 'hori' | startinsert <CR>",
	options
)
vim.api.nvim_set_keymap(
	"n",
	"<leader>v",
	":execute 'vnew +terminal' | let b:term_type = 'vert' | startinsert <CR>",
	options
)

-- Buffer Navigation
-- vim.api.nvim_set_keymap("n", "<Tab>", ":BufferLineCycleNext<CR>", options)
-- vim.api.nvim_set_keymap("n", "<S-Tab>", ":BufferLineCyclePrev<CR>", options)
-- vim.api.nvim_set_keymap("n", "<leader>x", ":BufferLinePickClose<CR>", options)

-- Format Code Keys
vim.api.nvim_set_keymap("n", "<F5>", ":Format<CR>", options)
