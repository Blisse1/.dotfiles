local lsp = require('lsp-zero').preset({})

lsp.on_attach(function(client, bufnr)
  lsp.default_keymaps({buffer = bufnr})
end)

lsp.ensure_installed({
  -- Replace these with whatever servers you want to install
  'tsserver',
  'eslint',
  'emmet_language_server',
  'rust_analyzer',
  'html',
  'tailwindcss',
  'htmx',
})

lsp.setup()
