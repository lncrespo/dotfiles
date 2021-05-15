let g:nvim_tree_width = 40
let g:nvim_tree_hijack_netrw = 1
let g:nvim_tree_git_hl = 1
let g:nvim_tree_lsp_diagnostics = 1
let g:nvim_tree_indent_markers = 1
let g:nvim_tree_auto_close = 1
let g:nvim_tree_quit_on_open = 1

let g:nvim_tree_icons = {
    \ 'default': "",
    \ 'git': {
    \     'unstaged': "",
    \     'staged': "",
    \     'untracked': ""
    \ },
\ }

lua << EOF

local tree_cb = require 'nvim-tree.config'.nvim_tree_callback

vim.g.nvim_tree_bindings = {
    ["l"] = tree_cb("edit"),
    ["h"] = tree_cb("close_node"),
}
