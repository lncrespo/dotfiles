lua << EOF

local capabilities = vim.lsp.protocol.make_client_capabilities()
capabilities.textDocument.completion.completionItem.snippetSupport = true

require'lspconfig'.clangd.setup{
    capabilities = capabilities
}
