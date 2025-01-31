require("trouble").setup()
local map = vim.keymap.set

map("n", "<leader>t", "<cmd>Trouble diagnostics toggle<CR>", {silent = true})

