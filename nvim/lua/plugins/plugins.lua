vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function()

  use 'wbthomason/packer.nvim'
  
  --theme
  use 'dylanaraps/wal.vim'

  --colorcolumn
  use "lukas-reineke/virt-column.nvim"

  --statusbar
  use {
    'nvim-lualine/lualine.nvim',
    requires = { 'kyazdani42/nvim-web-devicons', opt = true }
  }

  --treesitter
  use {
        'nvim-treesitter/nvim-treesitter',
        run = ':TSUpdate'
  }

  --treesitter-plugins-autotag
  use 'windwp/nvim-ts-autotag'

  --treesitter-plugins-autopair
  use 'windwp/nvim-autopairs'


  --nvim-tree
  use {
    'kyazdani42/nvim-tree.lua',
    requires = { 'kyazdani42/nvim-web-devicons' }
  }
  
  --tmux-navigator
  use 'christoomey/vim-tmux-navigator'

  --telescope
  use {
  'nvim-telescope/telescope.nvim',
  requires = { {'nvim-lua/plenary.nvim'} }
}

  --telescope-plugin-fzy
  use 'nvim-telescope/telescope-fzy-native.nvim'

  --autocomplete
    use 'neovim/nvim-lspconfig'
    use 'hrsh7th/cmp-nvim-lsp'
    use 'hrsh7th/cmp-buffer'
    use 'hrsh7th/cmp-path'
    use 'hrsh7th/cmp-cmdline'
    use 'hrsh7th/nvim-cmp'
    --use 'williamboman/nvim-lsp-installer'
    --For vsnip users.
    use 'hrsh7th/cmp-vsnip'
    use 'hrsh7th/vim-vsnip'
    --snippets para muchos lenguajes
    use 'rafamadriz/friendly-snippets'
    use 'onsails/lspkind-nvim'

  --terminal
    use {
      "akinsho/toggleterm.nvim", 
      tag = 'v1.*'
    }

  --hop
    use {
      'phaazon/hop.nvim',
      branch = 'v1'
    }

  end)
