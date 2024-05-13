return {
  'nvim-neorg/neorg',
  lazy = true,
  ft = 'norg',
  dependencies = {
   'vhyrro/luarocks.nvim'
  },
  load = {
    ['core.defaults'] = {},
  },
}
