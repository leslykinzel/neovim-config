local set = vim.opt_local

set.shiftwidth = 2
set.tabstop = 2

LSP_EXECUTABLE = "lua-language-server"

vim.lsp.config("luals", {
  cmd = { LSP_EXECUTABLE },
  filetypes = { "lua" },
  settings = {
      Lua = {
          diagnostics = {
              globals = { "vim" }
          }
      }
  }
})

if vim.fn.executable("lua-language-server") == 1 then
  vim.lsp.enable("luals")
else
  vim.notify(string.format("%s not available.", LSP_EXECUTABLE), vim.log.levels.INFO)
end
