local install_path = vim.fn.stdpath("data") .. "/site/pack/packer/opt/packer.nvim"

if vim.fn.empty(vim.fn.glob(install_path)) > 0 then
	print("Cloning Packer")
	packer_bootstrap =
		vim.fn.system({ "git", "clone", "--depth", "1", "https://github.com/wbthomason/packer.nvim", install_path })
end

vim.cmd([[ packadd packer.nvim ]])

local plugins = {
	{ "wbthomason/packer.nvim", opt = true },
	{ "lewis6991/impatient.nvim" },
	{ "nvim-treesitter/nvim-treesitter", run = ":TSUpdate" },
	{ "lewis6991/gitsigns.nvim" },
	{ "williamboman/nvim-lsp-installer", opt = true },
	{ "ray-x/lsp_signature.nvim" },
	{ "neovim/nvim-lspconfig" },
	{ "hrsh7th/cmp-nvim-lsp" },
	{ "hrsh7th/cmp-buffer" },
	{ "hrsh7th/cmp-path" },
	{ "hrsh7th/cmp-cmdline" },
	{ "hrsh7th/nvim-cmp" },
	{
		"L3MON4D3/LuaSnip",
		after = "nvim-cmp",
		config = function()
			require("luasnip.loaders.from_vscode").lazy_load()
		end,
	},
	{ "kyazdani42/nvim-tree.lua", requires = { "kyazdani42/nvim-web-devicons" } },
	{ "doums/darcula" },
	{ "navarasu/onedark.nvim" },
	{
		"terrortylor/nvim-comment",
		config = function()
			require("nvim_comment").setup()
		end,
	},
	{ "kdheepak/lazygit.nvim" },
	{ "mhartington/formatter.nvim" },
	{
		"akinsho/bufferline.nvim",
		config = function()
			require("bufferline").setup({})
		end,
	},
	-- Optional plugins --
	{ "sakhnik/nvim-gdb", opt = true },
}

return require("packer").startup(function(use)
	for _, plugin in pairs(plugins) do
		use(plugin)
	end
	if packer_bootstrap then
		require("packer").sync()
	end
end)
