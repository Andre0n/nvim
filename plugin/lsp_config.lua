local exists, lspconfig = pcall(require, "lspconfig")

if not exists then
    return
end

vim.diagnostic.config({
    virtual_text = {
        prefix = "",
    },
    signs = true,
    underline = true,
    update_in_insert = false,
})

vim.lsp.handlers["textDocument/hover"] = vim.lsp.with(vim.lsp.handlers.hover, {
    border = "single",
})

vim.lsp.handlers["textDocument/signatureHelp"] = vim.lsp.with(vim.lsp.handlers.signature_help, {
    border = "single",
    focusable = false,
    relative = "cursor",
})

-- suppress error messages from lang servers
vim.notify = function(msg, log_level)
    if msg:match("exit code") then
        return
    end
    if log_level == vim.log.levels.ERROR then
        vim.api.nvim_err_writeln(msg)
    else
        vim.api.nvim_echo({ { msg } }, true, {})
    end
end

-- Borders for LspInfo winodw
local win = require("lspconfig.ui.windows")
local _default_opts = win.default_opts

win.default_opts = function(options)
    local opts = _default_opts(options)
    opts.border = "single"
    return opts
end

local function get_capabilities()
    local capabilities = vim.lsp.protocol.make_client_capabilities()
    capabilities.textDocument.completion.completionItem = {
        documentationFormat = { "markdown", "plaintext" },
        snippetSupport = true,
        preselectSupport = true,
        insertReplaceSupport = true,
        labelDetailsSupport = true,
        deprecatedSupport = true,
        commitCharactersSupport = true,
        tagSupport = { valueSet = { 1 } },
        resolveSupport = {
            properties = {
                "documentation",
                "detail",
                "additionalTextEdits",
            },
        },
    }
    local cmp_lsp = {}
    exists, cmp_lsp = pcall(require, "cmp_nvim_lsp")
    if exists then
        capabilities = cmp_lsp.update_capabilities(vim.lsp.protocol.make_client_capabilities())
    end
    return capabilities
end

local diagnostics = {
    signs = {
        active = true,
        values = {
            { name = "DiagnosticSignError", text = "" },
            { name = "DiagnosticSignWarn", text = "" },
            { name = "DiagnosticSignHint", text = "" },
            { name = "DiagnosticSignInfo", text = "" },
        },
    },
}

for _, sign in ipairs(diagnostics.signs.values) do
    vim.fn.sign_define(sign.name, { texthl = sign.name, text = sign.text, numhl = sign.name })
end

local lsp_servers = { "sumneko_lua", "clangd", "pyright" }
for _, server in ipairs(lsp_servers) do
    lspconfig[server].setup({
        capabilities = get_capabilities(),
    })
end
