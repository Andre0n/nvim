local exists, treesitter = pcall(require, "nvim-treesitter.configs")

if not exists then
    return
end

treesitter.setup({
    ensure_installed = { "c", "lua" },
    highlight = {
        enable = true,
        use_languagetree = true
    },
    indent = {
        enable = true,
    }
})
