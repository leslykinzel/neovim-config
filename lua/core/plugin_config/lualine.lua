require('lualine').setup {
    options = {
        icons_enabled = true,
        theme = 'dayfox',
        component_separators = '',
        section_separators = { left = '', right = ''},
    },
    sections = {
        lualine_a = {
            {
                'filename',
                path = 4,
            }
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
            'mode'
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
