local set = vim.opt_local

set.shiftwidth = 4
set.tabstop = 4
set.expandtab = false

LSP_EXECUTABLE = "ols"

vim.lsp.config("ols", {
  cmd = { LSP_EXECUTABLE },
  filetypes = { "odin" },
  settings = {}
})

if vim.fn.executable("ols") == 1 then
  vim.lsp.enable("ols")
else
  vim.notify(string.format("%s is not available.", LSP_EXECUTABLE), vim.log.levels.INFO)
end
