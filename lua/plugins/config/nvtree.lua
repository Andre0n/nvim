local M = {}
M.setup = function()
	sucess, nvtree = pcall(require, "nvim-tree")
	if sucess then
		nvtree.setup({
			view = {
				width = 30,
			},
		})
	end
end
return M
