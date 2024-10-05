require('lualine').setup {
    options = {
        icons_enabled = true,
        theme = 'auto',
        component_separators = '',
        section_separators = { left = '', right = ''},
    },
    sections = {
        lualine_a = {
            'mode',
        },
        lualine_b = {
            {
                'branch',
                icon = ''
            }
        },
        lualine_c = {
            'diff',
        },
        lualine_x = {
            'diagnostics'
        },
        lualine_y = {
            'encoding'
        },
        lualine_z = {
            {
                'filename',
                path = 4
            },
            'fileformat'
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
