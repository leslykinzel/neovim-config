require('lualine').setup {
    options = {
        icons_enabled = true,
        theme = 'gruvbox-material',
    },
    sections = {
        lualine_a = {
            {
                'filename',
                path = 4,
            }
        },
        lualine_b = {
            'branch'
        },
        lualine_c = {

        },
        lualine_x = {

        },
        lualine_y = {

        },
        lualine_z = {

        }
    },
    inactive_sections = {
        lualine_a = {
            {
                'filename',
            }
        },
        lualine_b = {

        },
        lualine_c = {

        },
        lualine_x = {

        },
        lualine_y = {

        },
        lualine_z = {

        }
    }
}
