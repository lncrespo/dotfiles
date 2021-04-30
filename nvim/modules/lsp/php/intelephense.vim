lua << EOF

require'lspconfig'.intelephense.setup{
    on_attach=require'completion'.on_attach,
    cmd = { "intelephense", "--stdio" },
    filetypes = { "php" },
    root_dir = require'lspconfig'.util.root_pattern('.git', '.idea', 'composer.lock'),
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
                },
                functionTemplate = {
                    tags = {
                        "@param ${1:$SYMBOL_TYPE} $SYMBOL_NAME",
                        "@return ${1:$SYMBOL_TYPE}",
                        "@throws ${1:$SYMBOL_TYPE}"
                    }
                },
                propertyTemplate = {
                    tags = {
                        "@var ${1:$SYMBOL_TYPE}\n"
                    }
                }
            },
            files = {
                exclude = {}
            },
            references = {
                exclude = {}
            }
        }
    }
}
