lua << EOF

require'lspconfig'.jsonls.setup{
    settings = {
        json = {
            schemas = require'nlspsettings.jsonls'.get_default_schemas()
        }
    }
}
