require('lualine').setup {
    options = {
        theme = 'gruvbox_dark'
    },

    tabline = {
        lualine_b = {'branch'},
        lualine_c = {'filename'},
        lualine_x = {'windows'},
        lualine_y = {'filesize'}
    },
}
