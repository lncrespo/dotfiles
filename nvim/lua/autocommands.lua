vim.cmd[[autocmd InsertEnter * :set norelativenumber]]
vim.cmd[[autocmd InsertLeave * :set relativenumber]]
vim.cmd [[autocmd CursorHold,CursorHoldI * lua require'nvim-lightbulb'.update_lightbulb()]]
