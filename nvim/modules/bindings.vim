let mapleader = ","

" Nicer window switch
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

" LSP
nnoremap <space>d :lua require'telescope.builtin'.lsp_definitions() <CR>
nnoremap <space>a :lua require'telescope.builtin'.lsp_code_actions() <CR>
nnoremap <space>h :lua vim.lsp.buf.hover() <CR>
nnoremap <space>re :lua require'telescope.builtin'.lsp_references() <CR>
nnoremap <space>rn :lua vim.lsp.buf.rename() <CR>
nnoremap <space>cs :lua vim.lsp.buf.formatting() <CR>
nnoremap <space>i :lua vim.lsp.buf.implementation() <CR>
nnoremap <leader>er :lua require'telescope.builtin'.lsp_document_diagnostics() <CR>

" nvim-tree
nnoremap <space>e :NvimTreeToggle<CR>

" bufferline lua
nnoremap <silent>gb :BufferLineCycleNext<CR>
nnoremap <silent>gB :BufferLineCyclePrev<CR>
nnoremap <silent>gc :bw<CR>

" completion nvim
imap <silent> <c-space> <Plug>(completion_trigger)

" telescope
nnoremap <space>ff <cmd>Telescope find_files<cr>
nnoremap <space>fg <cmd>Telescope live_grep<cr>
nnoremap <space>fb <cmd>Telescope buffers<cr>
nnoremap <space>fh <cmd>Telescope help_tags<cr>

" gitsigns
nnoremap <leader>bt :Gitsigns toggle_current_line_blame <CR>
nnoremap <leader>bl :Gitsigns blame_line <CR>

" intelephense: one line codeblock to multiline codeblock
nnoremap <leader>pd 0t@r2f r2x
