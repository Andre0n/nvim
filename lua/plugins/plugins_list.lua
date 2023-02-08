return {
	{
		"folke/tokyonight.nvim",
		lazy = false,
		priority = 1000,
		config = function()
			vim.cmd("colorscheme tokyonight-moon")
		end,
	},
	{ "terrortylor/nvim-comment", lazy = true },
	{
		"mhartington/formatter.nvim",
		lazy = true,
		cmd = "Format",
		config = function()
			require("plugins.config.formatter").setup()
		end,
	},
	-- Explorer
	{
		"nvim-tree/nvim-tree.lua",
		lazy = true,
		cmd = "NvimTreeToggle",
		dependencies = {
			"nvim-tree/nvim-web-devicons",
		},
		config = function()
			require("plugins.config.nvtree").setup()
		end,
	},

	-- LSP STUFS
	{
		"neovim/nvim-lspconfig",
		lazy = true,
		config = function()
			require("plugins.config.lsp").setup()
		end,
		dependencies = {
			{
				"williamboman/mason-lspconfig.nvim",
				config = function()
					require("mason-lspconfig").setup()
				end,
			},
		},
	},
	{
		"nvim-telescope/telescope.nvim",
		lazy = true,
		keys = { { "<F6>", "<cmd>Telescope<cr>", desc = "Telescope" } },
		dependencies = {
			"nvim-lua/plenary.nvim",
			"BurntSushi/ripgrep",
			"nvim-tree/nvim-web-devicons",
			"sharkdp/fd",
		},
		config = function()
			require("plugins.config.telescope").setup()
		end,
	},
	{
		"williamboman/mason.nvim",
		lazy = true,
		cmd = "Mason",
		config = function()
			require("mason").setup()
		end,
	},
	{
		"hrsh7th/nvim-cmp",
		lazy = true,
		event = "InsertEnter",
		dependencies = {
			"neovim/nvim-lspconfig",
			{
				"hrsh7th/cmp-nvim-lsp",
				config = function()
					local exists, cmp_lsp = pcall(require, "cmp_nvim_lsp")
					if exists then
						cmp_lsp.default_capabilities(vim.lsp.protocol.make_client_capabilities())
					end
				end,
			},
			"hrsh7th/cmp-buffer",
			"hrsh7th/cmp-path",
			"L3MON4D3/LuaSnip",
			"saadparwaiz1/cmp_luasnip",
		},
		config = function()
			require("plugins.config.cmp").setup()
		end,
	},
	{
		"nvim-treesitter/nvim-treesitter",
		lazy = true,
		event = "BufEnter",
		config = function()
			require("nvim-treesitter.configs").setup({
				ensure_installed = { "cpp", "python", "lua" },
				highlight = {
					enable = true,
				},
				additional_vim_regex_highlighting = false,
			})
		end,
	},
}
