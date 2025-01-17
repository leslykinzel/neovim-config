return {
	{
		"echasnovski/mini.nvim",
		enabled = true,
		config = function()
			-- STATUSLINE
			local statusline = require "mini.statusline"
			statusline.setup { use_icons = true }

			local modes = { "Normal", "Insert", "Visual", "Command", "Replace" }

			for _, mode in ipairs(modes) do
				vim.api.nvim_set_hl(0, "MiniStatuslineMode" .. mode, {
					fg = "#FFFFFF",
					bg = "#323232",
					bold = false,
				})
			end

			-- AUTOPAIRS
			local autopairs = require "mini.pairs"
			autopairs.setup()

			-- KEYBIND HINTS
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
