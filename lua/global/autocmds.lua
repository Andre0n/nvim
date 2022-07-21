-- Don't auto commenting new lines
vim.api.nvim_create_autocmd("BufEnter", {
   pattern = "*",
   command = "set fo-=c fo-=r fo-=o",
})

-- dont list quickfix buffers
vim.api.nvim_create_autocmd("FileType", {
   pattern = "qf",
   callback = function()
      vim.opt_local.buflisted = false
   end,
})

