local status, packer = pcall(require, "packer")
if (not status) then
  print("Packer is not installed")
  return
end

vim.cmd [[packadd packer.nvim]]

packer.startup(function(use)
  use 'wbthomason/packer.nvim'
  use 'nvim-lualine/lualine.nvim' -- Statusline
  use 'onsails/lspkind-nvim' -- vscode-like pictograms
  use 'hrsh7th/cmp-buffer' -- nvim-cmp source for buffer words
  use 'hrsh7th/cmp-nvim-lsp' -- nvim-cmp source for neovim's built-in LSP
  use 'hrsh7th/nvim-cmp' -- Completion
  use 'L3MON4D3/LuaSnip'
  use 'neovim/nvim-lspconfig' -- LSP
  use 'williamboman/mason.nvim'
  use 'williamboman/mason-lspconfig.nvim'

  use 'kyazdani42/nvim-web-devicons' -- File icons
  use 'windwp/nvim-autopairs'
  use 'norcalli/nvim-colorizer.lua'

  use "lukas-reineke/indent-blankline.nvim"

  use 'navarasu/onedark.nvim'
  use { "ellisonleao/gruvbox.nvim" }
  -- Using Packer:
  use 'Mofiqul/dracula.nvim'
  use {
    'lewis6991/gitsigns.nvim',
  }

  use {'nvim-tree/nvim-tree.lua'}
  use {'nordtheme/vim'}
  use {'ayu-theme/ayu-vim'}
  use {
    'nvim-treesitter/nvim-treesitter',
    run = function() require('nvim-treesitter.install').update({ with_sync = true }) end,
  }

  use {'akinsho/bufferline.nvim', tag = "*", requires = 'nvim-tree/nvim-web-devicons'}
  use {"nvim-telescope/telescope.nvim", "nvim-lua/plenary.nvim"}
end)
