local betterterm = require("betterTerm")
betterterm.setup()

vim.keymap.set("n", "<C-;>", betterterm.open, { desc = "Open Terminal" })

