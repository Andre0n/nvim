local exists, formatter = pcall(require, "formatter")

if not exists then
    return
end
local util = require "formatter.util"

formatter.setup({
    -- Enable or disable logging
    logging = false,
    -- All formatter configurations are opt-in
    filetype = {
        -- Formatter configurations for filetype "lua" go here
        -- and will be executed in order
        lua = {
            require("formatter.filetypes.lua").stylua,
       },
        rust  = {
            require("formatter.filetypes.rust").rustfmt,
        },
        c  = {
            require("formatter.filetypes.c").clangformat,
        },
        cpp  = {
            require("formatter.filetypes.cpp").clangformat,
        },
        html = {
             require("formatter.filetypes.html").prettier,
        },
        css = {
             require("formatter.filetypes.css").prettier,
        }
    }
})
