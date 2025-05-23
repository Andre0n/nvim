require("config")
require("maps")
require("autocmds")
require("functions")

local plugin_manager = require("plugin_manager")
plugin_manager.init()

vim.cmd.colorscheme("catppuccin-mocha")
