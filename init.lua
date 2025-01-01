require("config.lazy")

-- General settings
vim.opt.cursorline = true
vim.opt.number = true

-- Indentation
vim.opt.shiftwidth = 4
vim.opt.scrolloff = 4
vim.opt.cmdheight = 1

-- Terminal Emulator
vim.keymap.set("t", "<Esc>", "<C-\\><C-n>")

-- Lazy
vim.keymap.set("n", "<leader>L", ":Lazy<CR>", { silent = true })

-- Oil
vim.keymap.set("n", "-", "<CMD>Oil<CR>", { desc = "Open parent directory" })

-- Telescope
local builtin = require("telescope.builtin")
vim.keymap.set("n", "<leader>ff", builtin.find_files, { desc = "Search files from cwd" })
vim.keymap.set("n", "<leader>fg", builtin.live_grep, { desc = "Live grep from cwd" })
vim.keymap.set("n", "<leader>fb", builtin.buffers, { desc = "Search open buffers" })

-- Inactive indent line colour
vim.cmd.highlight('IndentLine guifg=#282727')
-- Current indent line colour
vim.cmd.highlight('IndentLineCurrent guifg=#393836')

