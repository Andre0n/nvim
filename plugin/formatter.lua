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
             -- You can also define your own configuration
            -- function()
            --     -- Full specification of configurations is down below and in Vim help
            --     -- files
            --     return {
            --         exe = "stylua",
            --         args = {
            --             "--search-parent-directories",
            --             "--stdin-filepath",
            --              util.escape_path(util.get_current_buffer_file_path()),
            --             "--",
            --             "-",
            --         },
            --         stdin = true,
            --     }
            -- end
        },
        rust  = {
            require("formatter.filetypes.rust").rustfmt,
        },
        c  = {
            require("formatter.filetypes.c").clangformat,
        },
        cpp  = {
            require("formatter.filetypes.cpp").clangformat,
        }
    }
})
