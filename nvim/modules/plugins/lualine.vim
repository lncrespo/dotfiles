lua << EOF

local custom = require'lualine.themes.gruvbox_material'

custom.normal.c.bg = '#1d1f21'

require('lualine').setup{
    options = {
        theme = custom,
        sources = {'nvim_lsp'},
        color_error = '#cc0000'
    },
    sections = {
        lualine_c = {'filename', 'diagnostics'}
    }
}
