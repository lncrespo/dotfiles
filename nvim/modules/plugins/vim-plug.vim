call plug#begin('~/.config/nvim/plugged')
" Icons
Plug 'kyazdani42/nvim-web-devicons'

" Plugins
Plug 'hoob3rt/lualine.nvim'
Plug 'kyazdani42/nvim-tree.lua'
Plug 'akinsho/nvim-bufferline.lua'
Plug 'neovim/nvim-lspconfig'
Plug 'nvim-lua/completion-nvim'
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
Plug 'nvim-lua/popup.nvim'
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'
Plug 'norcalli/snippets.nvim'
Plug 'kosayoda/nvim-lightbulb'
Plug 'lewis6991/gitsigns.nvim'

" Themes
Plug 'joshdick/onedark.vim'

Plug 'vim-airline/vim-airline-themes'
call plug#end()
