return {
	"williamboman/mason.nvim",
	config = true,
	init = function()
		require("mason-lspconfig").setup()
		require("mason-lspconfig").setup_handlers({
			function(server_name)
				if server_name == "lua_ls" then
					return require("lspconfig")[server_name].setup({
						settings = {
							Lua = {
								diagnostics = {
									globals = { "vim" },
								},
							},
						},
					})
				end
				return require("lspconfig")[server_name].setup({})
			end,
		})
	end,
}
