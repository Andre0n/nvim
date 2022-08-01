local exists, treesitter = pcall(require, "nvim-treesitter.configs")

if not exists then
	return
end

treesitter.setup({
	ensure_installed = { "c", "cpp", "lua", "python" },
	highlight = {
		enable = true,
		use_languagetree = true,
	},
})
