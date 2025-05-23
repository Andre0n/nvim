return {
  'nvim-lualine/lualine.nvim',
  dependencies = { 'nvim-tree/nvim-web-devicons' },
  event = { 'BufReadPost', 'BufWritePost', 'BufNewFile', 'VeryLazy' },
  opts = {
    options = {
      theme = 'gruvbox',
      component_separators = { left = '|', right = '|'},
      section_separators = { left = '', right = ''},
    },
    sections = {
      lualine_a = {'mode'},
      lualine_b = {'branch', 'diff', 'diagnostics'},
      lualine_c = {},
      lualine_x = {'filename'},
      lualine_y = {'progress'},
      lualine_z = {'location'}
    },
  },
  config = true,
}
