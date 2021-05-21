lua << EOF

local nvim_lsp = require('lspconfig')
local capabilities = vim.lsp.protocol.make_client_capabilities()
capabilities.textDocument.completion.completionItem.snippetSupport = true;

require'lspconfig'.rust_analyzer.setup{
    capabilites = capabilites
}
