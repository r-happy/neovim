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
  use 'neovim/nvim-lspconfig' -- LSP
  use({"L3MON4D3/LuaSnip", tag = "v<CurrentMajor>.*"})
  -- use 'jose-elias-alvarez/null-ls.nvim' -- Use Neovim as a language server to inject LSP diagnostics, code actions, and more via Lua
  use 'williamboman/mason.nvim'
  use 'williamboman/mason-lspconfig.nvim'

  use {'nvim-tree/nvim-tree.lua'}

  use 'sheerun/vim-polyglot'
  use 'kyazdani42/nvim-web-devicons' -- File icons
  use 'windwp/nvim-autopairs'
  use 'norcalli/nvim-colorizer.lua'
  use 'akinsho/nvim-bufferline.lua'


  use 'lifepillar/vim-solarized8'

  use 'kdheepak/tabline.nvim'

  use "lukas-reineke/indent-blankline.nvim"

  use 'folke/tokyonight.nvim'

  use('MunifTanjim/prettier.nvim')

end)
