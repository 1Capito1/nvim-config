local opts = vim.opt
local api = vim.api


opts.number = true
opts.relativenumber = true
opts.clipboard = "unnamedplus"
opts.shiftwidth = 4
opts.softtabstop = 4
opts.tabstop = 4
opts.expandtab = true

opts.smartindent = true

opts.wrap = false

opts.swapfile = false
opts.backup = false
opts.undodir = os.getenv("HOME") .. "/.vim/undodir"
opts.undofile = true

opts.hlsearch = false
opts.incsearch = true

opts.termguicolors = true

opts.scrolloff = 8
opts.signcolumn = "yes"
opts.isfname:append("@-@")
vim.opt.updatetime = 50


api.nvim_set_hl(0, "LineNrAbove", { fg = "#739BD0" })
api.nvim_set_hl(0, "LineNr", { fg = "#739BD0" })
api.nvim_set_hl(0, "LineNrBelow", { fg = "#739BD0" })
api.nvim_set_hl(0, "NonText", { fg = "#739BD0"})

