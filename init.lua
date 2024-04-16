-- evil floating point bit hack
require("remap")
require("lazy-config")
require("capito")
require("plugins")
require("opts")
require("commands")


vim.api.nvim_command("autocmd FileType c setlocal commentstring=//\\ %s")
