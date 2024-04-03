local builtin = require('telescope.builtin')

vim.keymap.set('n', '<leader>ts', builtin.find_files, {})
vim.keymap.set('n', '<leader>gr', builtin.live_grep, {})
