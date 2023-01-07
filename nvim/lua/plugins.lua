return require('packer').startup(function(use)
  -- Package manager
  use 'wbthomason/packer.nvim'

  -- Color scheme
  use 'chriskempson/base16-vim'

  -- Lua utilities. Needed by some plugins
  use 'nvim-lua/plenary.nvim'

  -- Status bar
  use {
    'nvim-lualine/lualine.nvim',
    requires = { 'kyazdani42/nvim-web-devicons', opt = true }
  }

  -- Jump anywhere
  use {
    'phaazon/hop.nvim',
    branch = 'v2'
  }

  -- Focus text on center of window
  use 'folke/zen-mode.nvim'

  -- Comment code
  use 'preservim/nerdcommenter'

  -- C port of fzf
  use {
    'nvim-telescope/telescope-fzf-native.nvim',
    run = 'make'
  }

  -- Fuzzy finder over lists
  use {
    'nvim-telescope/telescope.nvim',
    tag = '0.1.x',
    requires = {
      { 'nvim-lua/plenary.nvim' }
    }
  }

  -- Tree sitter
  use {
    'nvim-treesitter/nvim-treesitter',
    run = function()
      local ts_update = require('nvim-treesitter.install').update({ with_sync = true })
      ts_update()
    end
  }
end)
