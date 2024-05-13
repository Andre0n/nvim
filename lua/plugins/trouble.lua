return {
  'folke/trouble.nvim',
  dependencies = { 'nvim-tree/nvim-web-devicons' },
  opts = {},

  config = function()
    require('trouble').setup()
    vim.keymap.set("n", "<leader>tb", function() require("trouble").toggle() end)
    vim.keymap.set("n", "<leader>tq", function() require("trouble").toggle() end)
  end,
}
