let g:nvim_tree_width = 75
let g:nvim_tree_hijack_netrw = 1
let g:nvim_tree_lsp_diagnostics = 1
let g:nvim_tree_auto_close = 1

let g:nvim_tree_icons = {
    \ 'default': "",
\ }

lua << EOF

local tree_cb = require 'nvim-tree.config'.nvim_tree_callback

vim.g.nvim_tree_bindings = {
    ["l"] = tree_cb("edit"),
    ["h"] = tree_cb("close_node"),
}
