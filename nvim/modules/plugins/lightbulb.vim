autocmd CursorHold,CursorHoldI * lua require'nvim-lightbulb'.update_lightbulb()
lua << EOF

vim.fn.sign_define('LightBulbSign', { text = "", texthl = "", linehl="", numhl="" })
