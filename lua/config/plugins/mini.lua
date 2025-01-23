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
					bg = "#323232",
					fg = "#FFFFFF",
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

			local movelines = require "mini.move"
			movelines.setup {
				mappings = {

					-- Visual mode
					left = "<C-h>",
					right = "<C-l>",
					down = "<C-j>",
					up = "<C-k>",

					-- Normal mode
					line_left = "<C-h>",
					line_right = "<C-l>",
					line_down = "<C-j>",
					line_up = "<C-k>",
				},

				options = {
					reindent_linewise = true,
				},
			}

		end
	},
}
