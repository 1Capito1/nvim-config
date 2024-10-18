vim.g.mapleader = " "

local map = vim.api.nvim_set_keymap

map('n', '-', "<cmd>Oil<CR>", {noremap = true, silent = true})
map('n', '<leader>y', "\"+y", {noremap = true, silent = true})
map('v', '<leader>d', '"_d', {noremap = true, silent = false})

map('n', "<leader>ng", ":Neogit<CR>", {noremap = true, silent = true})
map('n', "<C-c>z", "", {noremap = false})
map('n', "<leader>rr", ":Run<CR>", {silent = true, noremap = true})

map('n', '<leader>O', 'O<Esc>', {})
map('n', '<leader>o', 'o<Esc>', {})
map('n', 'w', '<M-w>', {})
map('n', '<leader>qq', '<Esc>m\'gqq\'\'a', {})
map('n', '<leader>g', 'ggVG', {})
map('n', '<leader>;', "A;", {})

map('n', '<Tab>', ':bnext<CR>', {})
map('n', '<Shift><Tab>', ':bprev<CR>', {})
map('n', 'dil', 'V<leader>d', {})

map('n', '<leader>hh', ":ClangdSwitchSourceHeader<CR>", {})

map('n', '<C-j>', ':wincmd j<CR>', {})
map('n', '<C-k>', ':wincmd k<CR>', {})
map('n', '<C-h>', ':wincmd h<CR>', {})
map('n', '<C-l>', ':wincmd l<CR>', {})

