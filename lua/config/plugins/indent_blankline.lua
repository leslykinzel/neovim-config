return {
  "lukas-reineke/indent-blankline.nvim",
  main = "ibl",
  config = function()
    local ibl = require("ibl")

    ibl.setup({
      indent = { char = "┊" },
      debounce = 200,
      viewport_buffer = { min = 5, max = 10, },
    })
  end
}
