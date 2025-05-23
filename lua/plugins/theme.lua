--[[
color: #e4e4e4
color: #f4f4ff
color: #f5f5f5
color: #ffffff
color: #000000
color: #101010
color: #181818
color: #282828
color: #453d41
color: #484848
color: #52494e
color: #c73c3f
color: #f43841
color: #ff4f58
color: #73d936
color: #ffdd33
color: #cc8c3c
color: #95a99f
color: #303540
color: #565f73
color: #96a6c8
color: #9e95c7
]]

return {
	"catppuccin/nvim",
	name = "catppuccin",
	priority = 1000,
	lazy = false,
}

-- return {
-- 	"RRethy/base16-nvim",
-- 	priority = 1000,
-- 	opts = {
-- 		base00 = "#181818", -- Background
-- 		base01 = "#101010",
-- 		base02 = "#282828",
-- 		base03 = "#cc8c3c", -- Comments
-- 		base04 = "#bdae93",
-- 		base05 = "#e4e4e4", -- Foreground (text)
-- 		base06 = "#ebdbb2",
-- 		base07 = "#d4d4d4",
-- 		base08 = "#95a99f",
-- 		base09 = "#fe8019",
-- 		base0A = "#d4d4d4",
-- 		base0B = "#73c936", -- Strings
-- 		base0C = "#ffdd33", -- Functions
-- 		base0D = "#83a598",
-- 		base0E = "#303540", -- Keywords
-- 		base0F = "#d65d0e",
-- 	},
-- 	config = function(_, o)
-- 		require("base16-colorscheme").setup(o, {
-- 			telescope = true,
-- 			cmp = true,
-- 			lualine = true,
-- 		})
-- 	end,
-- }
