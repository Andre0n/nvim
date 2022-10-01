--[[
--
-- Default global settings for Neovim
-- Author: André Gabriel(https://github.com/Andre0n)
--
--]]

pcall(vim.cmd, "colorscheme moonfly")

vim.cmd("syntax enable")
vim.cmd("filetype plugin indent on")

vim.opt.termguicolors = true
vim.opt.cmdheight = 2
vim.opt.backup = false
vim.opt.swapfile = false
vim.opt.writebackup = false
vim.opt.hlsearch = false
vim.opt.wrap = false

vim.opt.expandtab = true
vim.opt.shiftwidth = 4
vim.opt.smartindent = true
vim.opt.hidden = true
vim.opt.ignorecase = true
vim.opt.smartcase = true

vim.opt.number = true
vim.opt.numberwidth = 4
vim.opt.ruler = false

vim.g.did_load_filetypes = 0
vim.g.do_filetype_lua = 1

vim.opt.title = true
vim.opt.clipboard = "unnamedplus"

vim.opt.fillchars = { eob = " " }

vim.opt.splitbelow = true
vim.opt.splitright = true
vim.opt.tabstop = 4
vim.opt.termguicolors = true
vim.opt.undofile = true
vim.opt.encoding = "utf-8"
vim.opt.fileencoding = "utf-8"
vim.opt.scrolloff = 8
vim.opt.sidescrolloff = 8

vim.g.mapleader = " "

vim.opt.mouse = "a"
vim.opt.completeopt = { "menuone", "noselect" }
vim.opt.colorcolumn = "99999"
vim.opt.shortmess:append("c")
vim.opt.shortmess:append("I")
vim.opt.whichwrap:append("<,>,[,],h,l")
vim.opt.signcolumn = "yes"

-- Experimental Features
vim.opt.updatetime = 300 -- faster completion
vim.opt.timeoutlen = 250
vim.opt.foldexpr = ""

-- disable some builtin vim plugins
local default_plugins = {
    "2html_plugin",
    "getscript",
    "getscriptPlugin",
    "gzip",
    "logipat",
    "netrw",
    "netrwPlugin",
    "netrwSettings",
    "netrwFileHandlers",
    "matchit",
    "tar",
    "tarPlugin",
    "rrhelper",
    "spellfile_plugin",
    "vimball",
    "vimballPlugin",
    "zip",
    "zipPlugin",
    "tutor",
    "rplugin",
    "syntax",
    "synmenu",
    "optwin",
    "compiler",
    "bugreport",
    "ftplugin",
}

for _, plugin in pairs(default_plugins) do
    vim.g["loaded_" .. plugin] = 1
end

local default_providers = {
    "node",
    "perl",
    "python3",
    "ruby",
}

for _, provider in ipairs(default_providers) do
    vim.g["loaded_" .. provider .. "_provider"] = 0
end
