
-- Basic Requirements
local lsp_zero = require("lsp-zero")
local cmp_action = lsp_zero.cmp_action()

lsp_zero.on_attach(function(client, bufnr)
	lsp_zero.default_keymaps({buffer = bufnr})
end)

require('mason').setup({})
require('mason-lspconfig').setup({
	ensure_installed = {'rust_analyzer'},
	handlers = {
		lsp_zero.default_setup,
	},
})


-- Key Bindings
local cmp = require('cmp')

cmp.setup({
	sources = {
		{name = 'nvim_lsp'},
	},
	mapping = {
		['<Tab>'] = cmp_action.tab_complete(),
		['<C-e>'] = cmp.mapping.abort(),
		['<Up>'] = cmp.mapping.select_prev_item({behavior = 'select'}),
		['<Down>'] = cmp.mapping.select_next_item({behavior = 'select'}),
		['<C-p>'] = cmp.mapping(function()
			if cmp.visible() then
				cmp.select_prev_item({behavior = 'insert'})
			else
				cmp.complete()
			end
		end),
		['<C-n>'] = cmp.mapping(function()
			if cmp.visible() then
				cmp.select_next_item({behavior = 'insert'})
			else
				cmp.complete()
			end
		end),
	},
	snippet = {
		expand = function(args)
			require('luasnip').lsp_expand(args.body)
		end,
	},
})

