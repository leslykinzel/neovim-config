require("config.lazy")

-- General settings
vim.opt.cursorline = true
vim.opt.number = true

-- Indentation
vim.opt.expandtab = true
vim.opt.shiftwidth = 4
vim.opt.scrolloff = 4
vim.opt.cmdheight = 1
vim.opt.tabstop = 4

-- Lazy
vim.keymap.set("n", "<leader>L", "<CMD>Lazy<CR>", { silent = true })

-- Turn off search higlights
vim.keymap.set("n", "<leader>hl", "<CMD>noh<CR>")

-- Exit Terminal mode
vim.keymap.set("t", "<Esc>", "<C-\\><C-n>")

-- Oil
vim.keymap.set("n", "-", "<CMD>Oil<CR>", { desc = "Open parent directory" })

-- Telescope
local builtin = require("telescope.builtin")
vim.keymap.set("n", "<leader>ff", builtin.find_files, { desc = "Search files from cwd" })
vim.keymap.set("n", "<leader>fg", builtin.live_grep, { desc = "Live grep from cwd" })
vim.keymap.set("n", "<leader>fb", builtin.buffers, { desc = "Search open buffers" })

-- LSP
vim.api.nvim_create_autocmd("LspAttach", {
	callback = function(ev)
		local client = vim.lsp.get_client_by_id(ev.data.client_id)
		if client:supports_method("textDocument/completion") then
			vim.lsp.completion.enable(true, client.id, ev.buf, { autotrigger=true })
		end
	end
})

