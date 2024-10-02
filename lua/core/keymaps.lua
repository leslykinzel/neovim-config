-- Editor Keymaps
vim.g.mapleader = ' '
vim.g.maplocalleader = ' '

-- For scrolling 10 lines at a time while holding Ctrl.
vim.keymap.set('n', '<C-j>', '10j', {})
vim.keymap.set('n', '<C-k>', '10k', {})

-- This is supposed to mimic `cd ..` in my head .. means
-- "go back", so <leader>.. focuses your cursor on the 
-- previous pane.
vim.keymap.set('n', '<leader>..', '<C-w>p', {})
