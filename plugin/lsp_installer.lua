pcall(vim.cmd, "packadd nvim-lsp-installer")

local exists, lsp_installer = pcall(require,"nvim-lsp-installer")

if not exists then
    return
end

lsp_installer.on_server_ready(function(server)
    local opts = {}
    if server.name == "sumneko_lua" then
        opts = {
            settings = {
                Lua = {
                    diagnostics = {
                        globals = { 'vim', 'use' }
                    }
                }
            }
        }
    end
    server:setup(opts)
end)
