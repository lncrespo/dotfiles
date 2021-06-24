let mapleader = ","

" Nicer window switch
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

" LSP
nnoremap <space>d :lua require'telescope.builtin'.lsp_definitions() <CR>
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

" compe
imap <silent><expr> <c-space> compe#complete()
inoremap <silent><expr> <CR> compe#confirm('<CR>')

" telescope
nnoremap <space>j <cmd>Telescope find_files<cr>
nnoremap <space>h <cmd>Telescope find_files find_command=fd,-H,-I <cr>
nnoremap <space>g <cmd>Telescope live_grep<cr>
nnoremap <space>b <cmd>Telescope buffers<cr>

" gitsigns
nnoremap <leader>bt :Gitsigns toggle_current_line_blame <CR>
nnoremap <leader>bl :Gitsigns blame_line <CR>

" intelephense: one line codeblock to multiline codeblock
nnoremap <leader>pd 0t@r2f r2x

" snippets
imap <expr> <C-j>   vsnip#expandable()  ? '<Plug>(vsnip-expand)'         : '<C-j>'
smap <expr> <C-j>   vsnip#expandable()  ? '<Plug>(vsnip-expand)'         : '<C-j>'

" Expand or jump
imap <expr> <C-l>   vsnip#available(1)  ? '<Plug>(vsnip-expand-or-jump)' : '<C-l>'
smap <expr> <C-l>   vsnip#available(1)  ? '<Plug>(vsnip-expand-or-jump)' : '<C-l>'

" Jump forward or backward
imap <expr> <Tab>   vsnip#jumpable(1)   ? '<Plug>(vsnip-jump-next)'      : '<Tab>'
smap <expr> <Tab>   vsnip#jumpable(1)   ? '<Plug>(vsnip-jump-next)'      : '<Tab>'
imap <expr> <S-Tab> vsnip#jumpable(-1)  ? '<Plug>(vsnip-jump-prev)'      : '<S-Tab>'
smap <expr> <S-Tab> vsnip#jumpable(-1)  ? '<Plug>(vsnip-jump-prev)'      : '<S-Tab>'

nnoremap <leader>eol <cmd>set listchars=eol:⏎,trail:·,tab:»-,nbsp:+<cr>
nnoremap <leader>noeol <cmd>set listchars=trail:·,tab:»-,nbsp:+<cr>
lua << EOF
function lsp_code_actions()
  local opts = require'telescope.themes'.get_dropdown {
    winblend = 10,
    border = true,
    previewer = false,
    shorten_path = false,
  }

  require'telescope.builtin'.lsp_code_actions(opts)
end

vim.api.nvim_set_keymap('n', '<space>a', ':lua lsp_code_actions()<CR>', { noremap = true })
