return {
  'mhartington/formatter.nvim',
  config = function()
    local util = require('formatter.util')
    require('formatter').setup({
      log = true,
      filetype = {
        lua = {
          require('formatter.filetypes.lua').stylua,
        },
        javascript = {
          require('formatter.filetypes.javascript').prettier,
        },
        typescript = {
          require('formatter.filetypes.javascript').prettier,
        },
        typescriptreact = {
          require('formatter.filetypes.javascript').prettier,
        },
        html = {
          require('formatter.filetypes.html').prettier,
        },
        css = {
          require('formatter.filetypes.css').prettier,
        },
        rust = {
          require('formatter.filetypes.rust').rustfmt,
        },
        python = {
          [1] = function()
            return {
              exe = 'blue',
              args = { '-' },
              stdin = true,
            }
          end,
        },
      },
    })
    vim.keymap.set('n', '<leader>f', '<cmd>Format<cr>', opts)
  end,
}
