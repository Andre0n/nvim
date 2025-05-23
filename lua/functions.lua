local function compile_with(callback)
	return function()
		vim.cmd("Compile")
		local timer = vim.loop.new_timer()
		timer:start(50, 0, vim.schedule_wrap(callback))
	end
end

vim.api.nvim_create_user_command(
	"CompileTab",
	compile_with(function()
		vim.api.nvim_command("wincmd j")
		vim.api.nvim_command("wincmd T")
	end),
	{}
)

vim.api.nvim_create_user_command(
	"CompileNow",
	compile_with(function()
		vim.api.nvim_command("wincmd j")
	end),
	{}
)
