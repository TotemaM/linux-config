-- mason setup
require('mason').setup()

require('mason-lspconfig').setup({
	handlers = {
		function(server_name)
			require('lspconfig')[server_name].setup({})
		end,
	},
})

-- lsp-zero preset
local lsp = require('lsp-zero')
lsp.preset('recommended')

-- nvim-cmp setup
local cmp = require('cmp')
local cmp_select = { behavior = cmp.SelectBehavior.Select }

cmp.setup({
	mapping = cmp.mapping.preset.insert({
		['<C-p>']     = cmp.mapping.select_prev_item(cmp_select),
		['<C-n>']     = cmp.mapping.select_next_item(cmp_select),
		['<C-y>']     = cmp.mapping.confirm({ select = true }),
		['<C-Space>'] = cmp.mapping.complete(),
	}),
	sources = {
		{ name = 'nvim_lsp' },
		{ name = 'buffer' },
	}
})

-- initialize lsp-zero
lsp.setup()
