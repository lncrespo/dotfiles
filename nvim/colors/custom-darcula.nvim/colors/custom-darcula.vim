set background=dark
let g:colors_name="custom-darcula"

lua package.loaded['lush_theme.custom-darcula'] = nil

lua require('lush')(require('lush_theme.custom-darcula'))
