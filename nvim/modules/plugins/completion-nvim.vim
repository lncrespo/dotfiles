set completeopt=menuone,noinsert
set shortmess+=c

let g:completion_enable_auto_paren = 1
let g:completion_enable_snippet = 'vim-vsnip'
let g:completion_sorting = 'length'

" Required for intelephense variable autocompletion
set iskeyword=@,48-57,_,192-255,$
