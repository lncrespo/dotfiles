return require'packer'.startup(function()
    use 'wbthomason/packer.nvim'

    -- Telescope
    use {
      'nvim-telescope/telescope.nvim',
      requires = {{'nvim-lua/popup.nvim'}, {'nvim-lua/plenary.nvim'}}
    }

    -- Bufferline
    use {
      'akinsho/nvim-bufferline.lua',
      requires = 'kyazdani42/nvim-web-devicons'
    }

    -- File tree
    use {
      'kyazdani42/nvim-tree.lua',
      requires = 'kyazdani42/nvim-web-devicons'
    }

    -- Status bar
    use 'glepnir/galaxyline.nvim'

    -- LSP
    use 'neovim/nvim-lspconfig'
    use 'hrsh7th/vim-vsnip'
    use 'hrsh7th/vim-vsnip-integ'
    use 'hrsh7th/nvim-compe'
    use 'ray-x/lsp_signature.nvim'
    use 'kosayoda/nvim-lightbulb'

    -- Treesitter
    use {
      'nvim-treesitter/nvim-treesitter',
      run = ':TSUpdate'
    }

    use 'lewis6991/gitsigns.nvim'

    -- Theming
    use 'rktjmp/lush.nvim'

    -- Autoclosing brackets, auto expanding
    use 'steelsojka/pears.nvim'

    -- Welcome page
    use 'glepnir/dashboard-nvim'
end)
