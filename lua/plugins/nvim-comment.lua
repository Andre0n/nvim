return {
  'terrortylor/nvim-comment',
  command = { 'CommentToggle' },
  keys = {
    { '<M-;>', '<cmd>CommentToggle<cr>', desc = 'Comment' },
  },
  config = function()
    require('nvim_comment').setup({
      comment_empty = false,
      create_mappings = false,
    })

    vim.api.nvim_set_keymap(
      'v',
      '<M-;>',
      ':CommentToggle<CR>',
      { noremap = true, silent = true }
    )
  end,
}
