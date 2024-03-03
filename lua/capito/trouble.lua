local map = vim.api.nvim_set_keymap

map("n", '<leader>t', ":TroubleToggle<CR>", {silent = true, noremap = true})
