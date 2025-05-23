-- Load django syntax for .djhtml files
vim.api.nvim_create_autocmd({ "BufEnter", "BufWinEnter", "BufNewFile", "BufRead" }, {
	pattern = { "*.djhtml" },
	callback = function()
		local buf = vim.api.nvim_get_current_buf()
		vim.api.nvim_buf_set_option(buf, "syntax", "htmldjango")
	end,
})

-- Load handlebars syntax for .hbs and .handlebars files
vim.api.nvim_create_autocmd({ "BufEnter", "BufWinEnter", "BufNewFile", "BufRead" }, {
	pattern = { "*.hbs", "*.handlebars" },
	callback = function()
		local buf = vim.api.nvim_get_current_buf()
		vim.api.nvim_buf_set_option(buf, "syntax", "html")
	end,
})
