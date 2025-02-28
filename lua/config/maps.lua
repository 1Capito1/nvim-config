local map = vim.keymap.set

map("n", "-", ":Oil<CR>", { silent = true, noremap = true })
map("n", "<leader>-", require("oil").toggle_float, { silent = true, noremap = true })
map("n", "<leader>e", vim.lsp.buf.code_action, {noremap = true})
