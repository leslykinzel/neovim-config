vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

require("nvim-tree").setup{
    git = {
        enable = true
    },
    renderer = {
        indent_markers = {
            enable = true
        },
        highlight_git = true,
        icons = {
            show = {
                git = true,
                folder_arrow = false
            },
        }
    },
    view = {
        side = "right",
    },
    filters = {
        custom = { "^.git$" }
    }
}

vim.keymap.set('n', 'tr', ':NvimTreeToggle<CR>', { noremap = true, silent = true })
