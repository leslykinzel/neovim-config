return {
  {
    { "mason-org/mason.nvim", version = "^1.0.0" },
    { "mason-org/mason-lspconfig.nvim", version = "^1.0.0" },
    config = function()
      local mason = require("mason")
      local mason_lspconfig = require("mason-lspconfig")

      mason.setup({
        ui = {
          icons = {
            package_installed = "",
            package_pending = "",
            package_uninstalled = ""
          }
        }
      })

      mason_lspconfig.setup({
        ensure_installed = {
          "html",
          "cssls",
          "lua_ls",
          "basedpyright",
          "gopls",
          "intelephense",
          "rust_analyzer",
        },
        automatic_installation = true,
      })
    end,
  }
}
