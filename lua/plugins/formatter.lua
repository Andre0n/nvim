return {
	"mhartington/formatter.nvim",
	keys = {
		{ "<leader>f", "<cmd>Format<cr>", desc = "Format" },
	},
	config = function()
		require("formatter").setup({
			filetype = {
				lua = {
					require("formatter.filetypes.lua").stylua,
				},
				javascript = {
					require("formatter.filetypes.javascript").prettier,
				},
				typescript = {
					require("formatter.filetypes.javascript").prettier,
				},
				typescriptreact = {
					require("formatter.filetypes.javascript").prettier,
				},
				html = {
					require("formatter.filetypes.html").prettier,
				},
				htmldjango = {
					[1] = function()
						return {
							exe = "prettier",
							args = { "--parser", "html" },
							stdin = true,
						}
					end,
				},
				css = {
					require("formatter.filetypes.css").prettier,
				},
				rust = {
					require("formatter.filetypes.rust").rustfmt,
				},
				python = {
					[1] = function()
						return {
							exe = "blue",
							args = { "-" },
							stdin = true,
						}
					end,
				},
			},
		})
	end,
}
