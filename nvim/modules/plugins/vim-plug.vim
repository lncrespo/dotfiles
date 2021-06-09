call plug#begin('~/.config/nvim/plugged')
" Icons
Plug 'kyazdani42/nvim-web-devicons'

" Plugins
Plug 'hoob3rt/lualine.nvim'
Plug 'kyazdani42/nvim-tree.lua'
Plug 'akinsho/nvim-bufferline.lua'
Plug 'neovim/nvim-lspconfig'
Plug 'hrsh7th/vim-vsnip'
Plug 'hrsh7th/vim-vsnip-integ'
Plug 'hrsh7th/nvim-compe'
Plug 'ray-x/lsp_signature.nvim'
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
Plug 'nvim-lua/popup.nvim'
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'
Plug 'norcalli/snippets.nvim'
Plug 'kosayoda/nvim-lightbulb'
Plug 'lewis6991/gitsigns.nvim'
Plug 'lumiliet/vim-twig'
Plug 'qbbr/vim-symfony'
Plug 'iamcco/markdown-preview.nvim', { 'do': { -> mkdp#util#install() }, 'for': ['markdown', 'vim-plug']}
Plug 'rktjmp/lush.nvim'

" Themes
Plug 'joshdick/onedark.vim'
Plug 'sainnhe/gruvbox-material'
Plug 'briones-gabriel/darcula-solid.nvim'

call plug#end()
