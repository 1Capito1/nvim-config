require("mason").setup()
require("mason-lspconfig").setup()

local lspconfig = require('lspconfig')
local blink = require("blink.cmp")

require('mason-lspconfig').setup_handlers({
  function(server)
    local base_capabilities = lspconfig[server].capabilities

    local capabilities = blink.get_lsp_capabilities(base_capabilities)

    lspconfig[server].setup({
      capabilities = capabilities,
    })
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

require('lspconfig').rust_analyzer.setup({
  settings = {
    ["rust-analyzer"] = {
      imports = {
        granularity = {
          group = "module",
        },
        prefix = "self",
      },
      cargo = {
        loadOutDirsFromCheck = true,
      },
      procMacro = {
        enable = true,
      },
    },
  },
})

vim.keymap.set("n", "gd", vim.lsp.buf.definition, {silent = true})
vim.keymap.set("n", "<leader>f", vim.lsp.buf.format, {silent = true})
vim.keymap.set("n", "<leader>r", function ()
    vim.lsp.buf.rename()
    vim.cmd("wa!")
end, {silent = false})

require("lspconfig").cssls.setup {
    settings = {
        css = {
            lint = {
                unknownAtRules = "ignore"
            }
        }
    }
}

vim.diagnostic.config({
    virtual_text = true,
})
