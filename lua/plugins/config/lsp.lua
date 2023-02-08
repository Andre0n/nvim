local M = {}
M.setup = function()
	local sucess, lsp = pcall(require, "lspconfig")
	if sucess then
		local lsp_servers = { "sumneko_lua", "clangd", "pyright" }
		for _, server in pairs(lsp_servers) do
			if server == "sumneko_lua" then
				lsp[server].setup({
					settings = {
						Lua = {
							diagnostics = {
								globals = { "vim" },
							},
							workspace = {
								library = {
									[vim.fn.expand("$VIMRUNTIME/lua")] = true,
									[vim.fn.expand("$VIMRUNTIME/lua/vim/lsp")] = true,
								},
								maxPreload = 100000,
								preloadFileSize = 10000,
							},
						},
					},
					capabilities = vim.lsp.protocol.make_client_capabilities(),
				})
			else
				lsp[server].setup({
					capabilities = vim.lsp.protocol.make_client_capabilities(),
				})
			end
		end
	end
end

return M
