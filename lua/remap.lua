vim.g.mapleader = " "

local map = vim.api.nvim_set_keymap

map('n', '<leader>pv', ":Ex<CR>", {noremap = true, silent = true})
map('n', '<leader>y', "\"+y", {noremap = true, silent = true})

map('n', ':', "<cmd>lua require(\"fine-cmdline\").open({default_value = \"\"})<CR>", {})
