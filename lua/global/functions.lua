-- Custom functions for general propuse

local function get_current_buffer_file_path()
    return vim.api.nvim_buf_get_name(0)
end
local function get_current_buffer_file_name()
    return vim.fn.fnamemodify(get_current_buffer_file_path(), ":t")
end
local function get_current_buffer_file_extension()
  return vim.fn.fnamemodify(get_current_buffer_file_path(), ":e")
end

function RunBuild()
    local filetype = get_current_buffer_file_extension()
    local filename = get_current_buffer_file_name()
    if filetype == 'c' or filetype == "cpp" then
        pcall(vim.cmd, ':!make')
    elseif filetype == 'rs' then
        if vim.fn.empty(vim.fn.glob(vim.fn.getcwd().."/Cargo.toml"))  == 0 then
            print()
            pcall(vim.cmd, ':!cargo run --quiet')
        end
    elseif filetype == 'py' then
        pcall(vim.cmd, string.format(':!python %s', filename))
    elseif filetype == 'lua' then
        if vim.fn.empty(vim.fn.glob(vim.fn.getcwd().."/.love"))  == 0 then
            pcall(vim.cmd, ':!love .')
        else
            pcall(vim.cmd, string.format(':!lua %s', filename))
        end
    end
end
