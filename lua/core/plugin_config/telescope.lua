local builtin = require('telescope.builtin')

vim.keymap.set('n', 'ts', builtin.find_files, {})
vim.keymap.set('n', 'gr', builtin.live_grep, {})
