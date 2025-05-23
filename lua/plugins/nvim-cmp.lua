return {
	"hrsh7th/nvim-cmp",
	dependencies = {
		{
			"L3MON4D3/LuaSnip",
			build = (function()
				return "make install_jsregexp"
			end)(),
			config = function()
				local ls = require("luasnip")
				vim.keymap.set({ "i" }, "<C-K>", function()
					ls.expand()
				end, { silent = true })
				vim.keymap.set({ "i", "s" }, "<C-L>", function()
					ls.jump(1)
				end, { silent = true })
				vim.keymap.set({ "i", "s" }, "<C-J>", function()
					ls.jump(-1)
				end, { silent = true })

				vim.keymap.set({ "i", "s" }, "<C-E>", function()
					if ls.choice_active() then
						ls.change_choice(1)
					end
				end, { silent = true })
			end,
		},
		"hrsh7th/cmp-emoji",
		"saadparwaiz1/cmp_luasnip",
		"hrsh7th/cmp-nvim-lsp",
		"hrsh7th/cmp-path",
		{ "zbirenbaum/copilot-cmp", after = { "copilot.lua" } },
		"hrsh7th/cmp-nvim-lsp-signature-help",
	},
	config = function()
		local cmp = require("cmp")
		cmp.setup({
			preselect = cmp.PreselectMode.None,
			snippet = {
				expand = function(args)
					require("luasnip").lsp_expand(args.body)
				end,
			},
			window = {
				completion = cmp.config.window.bordered(),
				documentation = cmp.config.window.bordered(),
			},
			mapping = {
				["<C-n>"] = cmp.mapping.select_next_item(),
				["<C-p>"] = cmp.mapping.select_prev_item(),
				["<C-b>"] = cmp.mapping.scroll_docs(-4),
				["<C-f>"] = cmp.mapping.scroll_docs(4),
				["<C-Space>"] = cmp.mapping.complete(),
				["<C-e>"] = cmp.mapping.close(),
				["<CR>"] = cmp.mapping.confirm({ select = false }),
			},
			sources = cmp.config.sources({
				{ name = "nvim_lsp" },
				{ name = "luasnip" },
				{ name = "path" },
				{ name = "emoji" },
				{ name = "nvim_lsp_signature_help" },
			}, {
				{ name = "buffer" },
				{ name = "command" },
			}),
		})
	end,
}
