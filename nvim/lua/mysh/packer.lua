vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
  -- Packer manages itself
  use 'wbthomason/packer.nvim'

  -- Telescope
  use {
    'nvim-telescope/telescope.nvim',
    requires = {
      'nvim-lua/plenary.nvim',
    },
  }

  -- Colorschemes
  use {'metalelf0/jellybeans-nvim', requires = 'rktjmp/lush.nvim'}

  use 'sainnhe/gruvbox-material'
  use 'dgrco/deepwater.nvim'
  use 'oskarnurm/koda.nvim'

  -- Treesitter
  use {
    'nvim-treesitter/nvim-treesitter',
    run = ':TSUpdate',
  }

  -- Other plugins
  use 'ThePrimeagen/vim-be-good'
  use 'ThePrimeagen/harpoon'
  use 'tpope/vim-fugitive'
  use 'mbbill/undotree'
  use 'godlygeek/tabular'

  -- Native LSP configuration for Neovim 0.11+
  use 'neovim/nvim-lspconfig'

  -- Completion
  use {
    'hrsh7th/nvim-cmp',
    requires = {
      'hrsh7th/cmp-nvim-lsp',
      'hrsh7th/cmp-buffer',
      'hrsh7th/cmp-path',
    },
  }

end)
