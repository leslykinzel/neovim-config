require("mason").setup()
require("mason-lspconfig").setup({
    ensure_installed = { "lua_ls", "gopls" }
})

local on_attach = function(_, _)
    vim.keymap.set('n', '<leader>rn', vim.lsp.buf.rename, {})
    vim.keymap.set('n', '<leader>ca', vim.lsp.buf.code_action, {})
    vim.keymap.set('n', '<leader>man', vim.lsp.buf.definition, {})
    vim.keymap.set('n', '<leader>im', vim.lsp.buf.implementation, {})
    vim.keymap.set('n', '<leader>ref', require('telescope.builtin').lsp_references, {})
    vim.keymap.set('n', 'K', vim.lsp.buf.hover, {})
end

require("lspconfig").lua_ls.setup {
    on_attach = on_attach
}

require("lspconfig").gopls.setup {
    on_attach = on_attach
}
