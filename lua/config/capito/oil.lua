require('oil').setup({
    skip_confirm_for_simple_edits = true,
})

vim.keymap.set("n", "<space>-", require("oil").toggle_float)
