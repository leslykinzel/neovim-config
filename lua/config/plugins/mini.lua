return {
  {
    "echasnovski/mini.nvim",
    enabled = true,
    config = function()
      local statusline = require "mini.statusline"
      statusline.setup { use_icons = true }

      local autopairs = require "mini.pairs"
      autopairs.setup()

      local keyhints = require "mini.clue"
      keyhints.setup {
	triggers = {
	  -- Leader triggers
	  { mode = "n", keys = "<leader>" },
	}
      }
    end
  },
}
