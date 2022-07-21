local syntaxes = {
    tiny = function()
        vim.cmd ("au BufNewFile,BufRead *.tny set filetype=tiny ")
        vim.cmd ("au Syntax tiny runtime! syntax/tiny.vim ")
    end
}
for _, syntax in pairs(syntaxes) do
    syntax()
end
