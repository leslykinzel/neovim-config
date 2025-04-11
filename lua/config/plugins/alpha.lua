return {
  "goolord/alpha-nvim",
  -- dependencies = { "echasnovski/mini.icons" },
  dependencies = { "nvim-tree/nvim-web-devicons" },
  config = function()
    local dashboard = require("alpha.themes.dashboard")
    -- available: devicons, mini, default is mini
    -- if provider not loaded and enabled is true, it will try to use another provider
    dashboard.section.header.val = {
      "                                                     ",
      "  ███╗   ██╗███████╗ ██████╗ ██╗   ██╗██╗███╗   ███╗ ",
      "  ████╗  ██║██╔════╝██╔═══██╗██║   ██║██║████╗ ████║ ",
      "  ██╔██╗ ██║█████╗  ██║   ██║██║   ██║██║██╔████╔██║ ",
      "  ██║╚██╗██║██╔══╝  ██║   ██║╚██╗ ██╔╝██║██║╚██╔╝██║ ",
      "  ██║ ╚████║███████╗╚██████╔╝ ╚████╔╝ ██║██║ ╚═╝ ██║ ",
      "  ╚═╝  ╚═══╝╚══════╝ ╚═════╝   ╚═══╝  ╚═╝╚═╝     ╚═╝ ",
      "                                                     ",
    }
    dashboard.section.buttons.val = {
      dashboard.button("%", "  New file", ":ene <cr>"),
      dashboard.button("SPC fo", "  Recent", ":Telescope oldfiles <cr>"),
      dashboard.button("SPC ff", "  Find file", ":Telescope find_files <cr>"),
      dashboard.button("SPC fg", "  Live grep", ":Telescope live_grep <cr>"),
    }

    vim.api.nvim_create_autocmd("User", {
      pattern = "AlphaReady",
      desc = "hide cursor for alpha",
      callback = function()
        local hl = vim.api.nvim_get_hl_by_name("Cursor", true)
        hl.blend = 100
        vim.api.nvim_set_hl(0, "Cursor", hl)
        vim.opt.guicursor:append("a:Cursor/lCursor")
      end,
    })
    vim.api.nvim_create_autocmd("BufUnload", {
      buffer = 0,
      desc = "show cursor after alpha",
      callback = function()
        local hl = vim.api.nvim_get_hl_by_name("Cursor", true)
        hl.blend = 0
        vim.api.nvim_set_hl(0, "Cursor", hl)
        vim.opt.guicursor:remove("a:Cursor/lCursor")
      end,
    })
    require("alpha").setup(dashboard.config)
  end,
}
