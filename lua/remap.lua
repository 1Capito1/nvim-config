vim.g.mapleader = " "

local map = vim.api.nvim_set_keymap

map('n', '<leader>pv', ":Ex<CR>", {noremap = true, silent = true})
map('n', '<leader>y', "\"+y", {noremap = true, silent = true})
map('n', 'q', "", {noremap = true, silent = true})

map('n', ':', "<cmd>lua require(\"fine-cmdline\").open({default_value = \"\"})<CR>", {})
map('n', "<leader>ng", ":Neogit<CR>", {noremap = true, silent = true})
