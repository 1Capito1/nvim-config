local builtin = require("telescope.builtin")
local map = vim.keymap.set

local actions = require("telescope.actions")
local trouble = require("trouble.providers.telescope")

local telescope = require("telescope")

telescope.setup {
    defaults = {
        mappings = {
            i = { ["<c-y>"] = trouble.open_with_trouble},
            n = { ["<c-y>"] = trouble.open_with_trouble}
        },
    },
}

map("n", "<leader>pf", builtin.find_files, {})
map("n", "<leader>ps", builtin.live_grep, {})
map("n", "<leader>fs", ":Telescope lsp_document_symbols<CR>", {})
