vim.g.mapleader = " "

local map = vim.api.nvim_set_keymap

map('n', '<leader>pv', "<cmd>Oil<CR>", {noremap = true, silent = true})
map('n', '<leader>y', "\"+y", {noremap = true, silent = true})
map('v', '<leader>d', '"_d', {noremap = true, silent = false})
map('n', 'q', "", {noremap = true, silent = true})

map('n', ':', "<cmd>lua require(\"fine-cmdline\").open({default_value = \"\"})<CR>", {})
map('n', '<leader>:', ":", {noremap = true})
map('n', "<leader>ng", ":Neogit<CR>", {noremap = true, silent = true})
map('n', "<C-c>z", "", {noremap = false})

