require("mason").setup()
require("mason-lspconfig").setup()

local lspconfig = require('lspconfig')

require('mason-lspconfig').setup_handlers({
  function(server)
    lspconfig[server].setup({})
  end,
})

require('lspconfig').lua_ls.setup {
  settings = {
    Lua = {
      runtime = {
        -- Tell the language server to use LuaJIT (used by Neovim)
        version = 'LuaJIT',
      },
      diagnostics = {
        -- Get the language server to recognize the `vim` global
        globals = { 'vim' },
      },
      workspace = {
        -- Make the server aware of Neovim runtime files
        library = vim.api.nvim_get_runtime_file("", true),
      },
      telemetry = {
        enable = false, -- Disable telemetry for better performance
      },
    },
  },
}

vim.keymap.set("n", "gd", vim.lsp.buf.definition, {silent = true})
vim.keymap.set("n", "<leader>f", vim.lsp.buf.format, {silent = true})
