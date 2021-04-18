lua << EOF

require('lualine').setup{
    options = {
        theme = 'onedark',
        sources = {'nvim_lsp'},
        color_error = '#cc0000'
    },
    sections = {
        lualine_c = {'filename', 'diagnostics'}
    }
}
