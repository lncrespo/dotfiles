lua << EOF

require'lspconfig'.tsserver.setup{
    root_dir = require'lspconfig'.util.root_pattern(".idea")
}
