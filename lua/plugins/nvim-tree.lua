return {
	"nvim-tree/nvim-tree.lua",
	requires = {
		"nvim-tree/nvim-web-devicons",
	},
	keys = { { "<leader>cb", "<cmd>NvimTreeToggle<cr>", desc = "Toggle NvimTree" } },
	opts = {
		view = {
			width = 30,
		},
		filters = {
			dotfiles = false,
		},
	},
}
