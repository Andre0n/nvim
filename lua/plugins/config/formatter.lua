local M = {}

M.setup = function()
	local sucess, formatter = pcall(require, "formatter")
	if sucess then
		local options = {
			filetype = {
				lua = { require("formatter.filetypes.lua").stylua },
			},
			["*"] = {
				require("formatter.filetypes.any").remove_trailing_whitespace,
			},
		}
		formatter.setup(options)
	end
end

return M
