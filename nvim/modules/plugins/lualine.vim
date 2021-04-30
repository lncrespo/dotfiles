lua << EOF

local custom_onedark = require'lualine.themes.onedark'

custom_onedark.normal.c.bg = '#1d1f21'

require('lualine').setup{
    options = {
        theme = custom_onedark,
        sources = {'nvim_lsp'},
        color_error = '#cc0000'
    },
    sections = {
        lualine_c = {'filename', 'diagnostics'}
    }
}
