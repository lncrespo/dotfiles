vim.g.nvim_tree_width = 50
vim.g.nvim_tree_hijack_netrw = 1
vim.g.nvim_tree_lsp_diagnostics = 1
vim.g.nvim_tree_auto_close = 1

local tree_cb = require 'nvim-tree.config'.nvim_tree_callback

vim.g.nvim_tree_bindings = {
    { key = {"l"}, cb = tree_cb("edit") },
    { key = {"h"}, cb = tree_cb("close_node") }
}

vim.g.nvim_tree_icons = {
    default = "",
    symlink = "",
    git = {
        unstaged = "✗",
        staged = "✓",
        unmerged = "",
        renamed = "➜",
        untracked = "★",
        deleted = "",
        ignored = "◌"
    },
    folder = {
        default = "",
        open = "",
        symlink = "",
        empty = "",
        empty_open = "",
        symlink_open = ""
    }
}
