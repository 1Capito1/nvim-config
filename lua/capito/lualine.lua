require('lualine').setup {
    options = {
        theme = 'onedark'
    },

    tabline = {
        lualine_b = {'branch'},
        lualine_c = {'filename'},
    },
}
