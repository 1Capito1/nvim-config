local builtin = require("telescope.builtin")
local map = vim.keymap.set


map("n", "<leader>pf", builtin.find_files, {})
map("n", "<leader>ps", builtin.live_grep, {})
