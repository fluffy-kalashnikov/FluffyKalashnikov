lsp = require("lsp-zero")
lsp.preset('recommended')
lsp.nvim_workspace()
lsp.ensure_installed({
'sumneko_lua',
'rust_analyzer'
})
lsp.setup()
