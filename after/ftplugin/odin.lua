local set = vim.opt_local

set.shiftwidth = 4
set.tabstop = 4
set.expandtab = false

vim.keymap.set("n", "<leader>b", ":!sh build.sh<CR>", { silent = true })
