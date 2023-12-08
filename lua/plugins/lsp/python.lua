return {
    require("lspconfig").pyright.setup{
        on_attach = function ()
            vim.keymap.set("n", "K", vim.lsp.buf.hover, {buffer=0})
            vim.keymap.set("n", "gd", vim.lsp.buf.definition, {buffer=0})
            vim.keymap.set("n", "gt", vim.lsp.buf.type_definition, {buffer=0})
            vim.keymap.set("n", "gi", vim.lsp.buf.implementation, {buffer=0})
            vim.keymap.set("n", "<leader>r", vim.lsp.buf.rename, {buffer=0}, {desc = "Rename"})
            vim.keymap.set("n", "<leader>f", vim.lsp.buf.code_action, {buffer=0}, {desc = "fix code"})
            print("Hello world")
        end,
    },
}
