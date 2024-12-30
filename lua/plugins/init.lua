require('plugins.telescope')
require('plugins.treesitter')
require('plugins.lspconfig')

return require('packer').startup(function(use)
  use 'wbthomason/packer.nvim'

  use {
    'nvim-telescope/telescope.nvim', tag = '0.1.8',
    requires = { 'nvim-lua/plenary.nvim' }
  }

  use {
    'nvim-treesitter/nvim-treesitter',
    run = function()
      local ts_update = require('nvim-treesitter.install').update({ with_sync = true })
      ts_update()
    end
  }

  use {
    'williamboman/mason.nvim',
    'williamboman/mason-lspconfig.nvim',
    'neovim/nvim-lspconfig',
    'hrsh7th/cmp-nvim-lsp',
    'hrsh7th/cmp-buffer',
    'hrsh7th/cmp-path',
    'hrsh7th/nvim-cmp',
    'L3MON4D3/LuaSnip',
    'saadparwaiz1/cmp_luasnip'
  }

  use {
    'adisen99/codeschool.nvim',
    requires = { 'rktjmp/lush.nvim' },
    config = function()
      vim.g.codeschool_contrast_dark = 'hard'
      vim.cmd('colorscheme codeschool')
    end
  }
end)
