local cmp = require("cmp");
require("mason").setup()
require("mason-lspconfig").setup()

cmp.setup {
  sources = {
    { name = 'nvim_lsp' }
  }
}

cmp.setup({
    snippet = {
        expand = function(args)
            require('luasnip').lsp_expand(args.body) -- For `luasnip` users.
        end,
    },
    mapping = cmp.mapping.preset.insert({
        ['<C-p>'] = cmp.mapping.select_prev_item(cmp_select),
        ['<C-n>'] = cmp.mapping.select_next_item(cmp_select),
        ['<C-y>'] = cmp.mapping.confirm({ select = true }),
        ["<C-Space>"] = cmp.mapping.complete(),
    }),
    sources = cmp.config.sources({
        { name = 'nvim_lsp' },
        { name = 'luasnip' }, -- For luasnip users.
    }, {
        { name = 'buffer' },
    })
})

-- The nvim-cmp almost supports LSP's capabilities so You should advertise it to LSP servers..
local capabilities = require('cmp_nvim_lsp').default_capabilities()

-- An example for configuring `clangd` LSP to use nvim-cmp as a completion engine
require('lspconfig').ts_ls.setup {
  capabilities = capabilities,
  ...  -- other lspconfig configs
}
require('lspconfig').rust_analyzer.setup {
  capabilities = capabilities,
  ...  -- other lspconfig configs
}
require('lspconfig').lua_ls.setup {
  capabilities = capabilities,
  ...  -- other lspconfig configs
}
-- ...
