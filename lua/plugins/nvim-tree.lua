return {
  'nvim-tree/nvim-tree.lua',
  version = '*',
  cmd = 'NvimTreeToggle',
  dependencies = {
    'nvim-tree/nvim-web-devicons',
  },
  keys = { { '<leader>cb', '<cmd>NvimTreeToggle<cr>', desc = 'NvimTree' } },
  config = function()
    require('nvim-tree').setup({})
  end,
}
