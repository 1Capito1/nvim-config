require('oil').setup({
    columns = {
        {"size", highlight = "Special"},
        "icon",
    }
})

vim.keymap.set("n", "<space>-", require("oil").toggle_float)
