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

-- if os is unix-based, then change undodir to ~/.vim.undodir
local home_dir = os.getenv("HOME")
if package.config:sub(1, 1) == '/' then
    opts.undodir = home_dir .. "/.vim/undodir"
end
