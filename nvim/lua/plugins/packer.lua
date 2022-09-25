local fn = vim.fn
local install_path = fn.stdpath('data')..'/site/pack/packer/start/packer.nvim'

if fn.empty(fn.glob(install_path)) > 0 then
  packer_boostrap = fn.system({'git', 'clone', '--dept', '1', 'https://github.com/wbthomason/packer.nvim', install_path})
end
return require('packer').startup(function(use)
  use 'wbthomason/packer.nvim'

  --colorcolumn
  use "lukas-reineke/virt-column.nvim"

  --Tema
  use { 'AlphaTechnolog/pywal.nvim', as = 'pywal' }

  --Tree
  use {
  "nvim-neo-tree/neo-tree.nvim",
    branch = "v2.x",
    requires = { 
      "nvim-lua/plenary.nvim",
      "kyazdani42/nvim-web-devicons", -- not strictly required, but recommended
      "MunifTanjim/nui.nvim",
    }
  }

  --Line
  use {
    'feline-nvim/feline.nvim',
    requires = {
      'lewis6991/gitsigns.nvim',
      'nvim-web-devicons'
    }
  }

  --Tab
  use {
    'nanozuki/tabby.nvim',
    requires = { "kyazdani42/nvim-web-devicons" }
  }

  --hop
  use {
    'phaazon/hop.nvim',
    branch = 'v1'
  }

  --treesitter
  use {
        'nvim-treesitter/nvim-treesitter',
        run = ':TSUpdate'
  }

  --auto-pair
  use "windwp/nvim-autopairs"


  --treesitter-plugins-autotag
  use 'windwp/nvim-ts-autotag'

  --telescope
  use {
    'nvim-telescope/telescope.nvim',
    requires = { {'nvim-lua/plenary.nvim'} }
  }

  --telescope-plugin-fzy
  use 'nvim-telescope/telescope-fzy-native.nvim'


  --coc
  use {'neoclide/coc.nvim', branch = 'release'}

  --Zen-mode
  use "folke/zen-mode.nvim"

  --Twilight
  use "folke/twilight.nvim"
end)
