require('lualine').setup {
    options = {
        theme = 'tokyonight'
    },

    tabline = {
        lualine_b = {'branch'},
        lualine_c = {'filename'},
        lualine_x = {'windows'},
        lualine_y = {'filesize'}
    },
}
