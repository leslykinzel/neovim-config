require("config.lazy")

-- General settings
vim.opt.updatetime = 250
vim.opt.undofile = true
vim.opt.breakindent = true
vim.opt.cursorline = false
vim.opt.number = true
vim.opt.mouse = "a"

-- scheduled for startup performance
vim.schedule(function()
  vim.opt.clipboard = "unnamedplus"
end)

-- Indentation
vim.opt.expandtab = true
vim.opt.scrolloff = 4
vim.opt.cmdheight = 1

-- Whitespace
vim.opt.list = true
vim.opt.listchars = { tab = "» ", trail = "·", nbsp = "␣" }

-- Window splits
vim.opt.splitright = true
vim.opt.splitbelow = true
vim.keymap.set("n", "<C-h>", "<C-w><C-h>", { desc = "Move focus to the left window" })
vim.keymap.set("n", "<C-l>", "<C-w><C-l>", { desc = "Move focus to the right window" })
vim.keymap.set("n", "<C-j>", "<C-w><C-j>", { desc = "Move focus to the lower window" })
vim.keymap.set("n", "<C-k>", "<C-w><C-k>", { desc = "Move focus to the upper window" })

-- Turn off search higlights
vim.keymap.set("n", "<leader>hl", "<CMD>noh<CR>")

-- Exit Terminal mode
vim.keymap.set("t", "<Esc>", "<C-\\><C-n>")

--[[ PLUGIN STUFF ]]--

-- Lazy
vim.keymap.set("n", "<leader>lz", "<CMD>Lazy<CR>", { silent = true })

-- Oil
vim.keymap.set("n", "-", "<CMD>Oil<CR>", { desc = "Open parent directory" })

-- Telescope
local builtin = require("telescope.builtin")
vim.keymap.set("n", "<leader>ff", builtin.find_files, { desc = "Search files from cwd" })
vim.keymap.set("n", "<leader>fg", builtin.live_grep, { desc = "Live grep from cwd" })
vim.keymap.set("n", "<leader>fo", builtin.oldfiles, { desc = "Search recent files" })
vim.keymap.set("n", "<leader>fb", builtin.buffers, { desc = "Search open buffers" })
