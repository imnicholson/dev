vim.cmd [[ packadd packer.nvim ]]

return require('packer').startup(function(use)
  use 'wbthomason/packer.nvim'

  -- move lines up/down
  use 'fedepujol/move.nvim'

  -- telescope
  use {
    'nvim-telescope/telescope.nvim', tag = '0.1.0',
    requires = { {'nvim-lua/plenary.nvim'} }
  }

  -- lsp config
  use 'neovim/nvim-lspconfig'
  use 'williamboman/nvim-lsp-installer'
  use 'hrsh7th/cmp-nvim-lsp'
  use 'hrsh7th/cmp-buffer'
  use 'hrsh7th/cmp-path'
  use 'hrsh7th/cmp-cmdline'
  use 'hrsh7th/nvim-cmp'
  use 'hrsh7th/cmp-vsnip'
  use 'hrsh7th/vim-vsnip'
  use {
    'nvim-treesitter/nvim-treesitter',
    requires = { 'nathom/filetype.nvim' },
  }

  
  -- file tree
  use 'kyazdani42/nvim-web-devicons'
  use {
    'kyazdani42/nvim-tree.lua',
    requires = {
      'kyazdani42/nvim-web-devicons', -- optional, for file icon
    },
  }

  -- lsp issues window
  use {
    "folke/trouble.nvim",
    requires = "kyazdani42/nvim-web-devicons",
    config = function()
      require("trouble").setup {
        -- your configuration comes here
        -- or leave it empty to use the default settings
        -- refer to the configuration section below
      }
    end
  }

  -- status bar
  use 'tamton-aquib/staline.nvim'
  use 'feline-nvim/feline.nvim'

  -- look & feel
  use 'andersevenrud/nordic.nvim'
  use 'gruvbox-community/gruvbox'
  use 'folke/tokyonight.nvim'
  use 'tanvirtin/monokai.nvim' 

end);	
