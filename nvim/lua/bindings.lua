vim.g.mapleader= " "

function lsp_code_actions()
  local opts = require'telescope.themes'.get_dropdown {
    winblend = 10,
    border = true,
    previewer = false,
    shorten_path = false,
  }

  require'telescope.builtin'.lsp_code_actions(opts)
end

-- Window switching
vim.api.nvim_set_keymap('n', '<C-J>', '<C-W><C-J>', { noremap = true });
vim.api.nvim_set_keymap('n', '<C-K>', '<C-W><C-K>', { noremap = true });
vim.api.nvim_set_keymap('n', '<C-L>', '<C-W><C-L>', { noremap = true });
vim.api.nvim_set_keymap('n', '<C-H>', '<C-W><C-H>', { noremap = true });

-- LSP
vim.api.nvim_set_keymap('n', '<leader>d', '<cmd>lua require\'telescope.builtin\'.lsp_definitions()<cr>', { noremap = true });
vim.api.nvim_set_keymap('n', '<leader>h', '<cmd>lua vim.lsp.buf.hover()<cr>', { noremap = true });
vim.api.nvim_set_keymap('n', '<leader>re', '<cmd>lua require\'telescope.builtin\'.lsp_references()<cr>', { noremap = true });
vim.api.nvim_set_keymap('n', '<leader>rn', '<cmd>lua vim.lsp.buf.rename()<cr>', { noremap = true });
vim.api.nvim_set_keymap('n', '<leader>cs', '<cmd>lua vim.lsp.buf.formatting()<cr>', { noremap = true });
vim.api.nvim_set_keymap('n', '<leader>i', '<cmd>lua require\'telescope.builtin\'.lsp_implementations()<cr>', { noremap = true });
vim.api.nvim_set_keymap('n', '<leader>a', ':lua lsp_code_actions()<cr>', { noremap = true })
vim.api.nvim_set_keymap('n', ',er', ':lua require\'telescope.builtin\'.lsp_document_diagnostics()<cr>', { noremap = true })

-- File tree
vim.api.nvim_set_keymap('n', '<leader>e', ':NvimTreeToggle<cr>', { noremap = true });

-- Bufferline navigation
vim.api.nvim_set_keymap('n', 'gb', ':BufferLineCycleNext<cr>', { noremap = true, silent = true });
vim.api.nvim_set_keymap('n', 'gB', ':BufferLineCyclePrev<cr>', { noremap = true, silent = true });
vim.api.nvim_set_keymap('n', 'gc', ':bw<cr>', { noremap = true, silent = true });

-- Compe (Completion)
vim.api.nvim_set_keymap('i', '<c-space>', 'compe#complete()', { silent = true, expr = true });
vim.api.nvim_set_keymap('i', '<cr>', 'compe#confirm(\'<cr>\')', { noremap = true, silent = true, expr = true });

-- Telescope
vim.api.nvim_set_keymap('n', '<leader>f', '<cmd>Telescope find_files<cr>', { noremap = true });
vim.api.nvim_set_keymap('n', '<leader>h', '<cmd>Telescope find_files find_command=fd,-H,-I<cr>', { noremap = true });
vim.api.nvim_set_keymap('n', '<leader>g', '<cmd>Telescope live_grep<cr>', { noremap = true });
vim.api.nvim_set_keymap('n', '<leader>b', '<cmd>Telescope buffers<cr>', { noremap = true });

vim.api.nvim_set_keymap('n', ',bl', '<cmd>Gitsigns toggle_current_line_blame<cr>', { noremap = true });

vim.api.nvim_set_keymap('n', ',fd', '0t@r\2f r\2x', { noremap = true });
