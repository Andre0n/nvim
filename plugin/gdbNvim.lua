local install_path = vim.fn.stdpath("data").."/site/pack/packer/opt/nvim-gdb"
if vim.fn.empty(vim.fn.glob(install_path)) > 0 then
    return
end
vim.cmd [[ packadd nvim-gdb ]]

vim.g.nvimgdb_config_override = {
    key_step = 's',
    key_next = 'n',
    key_finish = 'f',
    key_breakpoint = 'b',
    key_framedown = '<c-o>',
}
