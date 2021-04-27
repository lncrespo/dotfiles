lua << EOF

require'lspconfig'.intelephense.setup{
    on_attach=require'completion'.on_attach,
    cmd = { "intelephense", "--stdio" },
    filetypes = { "php" },
    root_dir = require'lspconfig'.util.root_pattern('composer.json', '.git', 'index.php'),
    settings = {
        intelephense = {
            completion = {
                maxItems = 200
            },
            phpdoc = {
                classTemplate = {
                    tags = {
                        "Class ${1:$SYMBOL_NAME}",
                        "\n@package ${1:$SYMBOL_NAMESPACE}"
                    }
                }
            },
            files = {
                exclude = {}
            }
        }
    }
}
