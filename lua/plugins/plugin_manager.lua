local M = {}

M.plugin_manager_path = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
M.setup = function()
  if  not vim.loop.fs_stat(M.plugin_manager_path) then
    print("Cloning lazy...")
    vim.fn.system({
      "git",
      "clone",
      "--filter=blob:none",
      "https://github.com/folke/lazy.nvim.git",
      M.plugin_manager_path
    })
  end
  vim.opt.rtp:prepend(M.plugin_manager_path)
end

M.load_plugins_from = function(plugins_list)
  sucess, lazy = pcall(require, "lazy")
  if sucess then
    lazy.setup(plugins_list)
  end
end

return M
