return require('packer').startup(function(use)
  -- Package manager
  use 'wbthomason/packer.nvim'

  -- Color scheme
  use 'RRethy/nvim-base16'

  -- Lua utilities. Needed by some plugins
  use 'nvim-lua/plenary.nvim'

  -- Status bar
  use 'nvim-lualine/lualine.nvim'

  -- Jump anywhere
  use {
    'phaazon/hop.nvim',
    branch = 'v2'
  }

  -- Better matches presentation
  use 'kevinhwang91/nvim-hlslens'

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

  -- File browser extension for Telescope
  use 'nvim-telescope/telescope-file-browser.nvim'

  -- Tree sitter
  use {
    'nvim-treesitter/nvim-treesitter',
    run = function()
      local ts_update = require('nvim-treesitter.install').update({ with_sync = true })
      ts_update()
    end
  }

  -- Auto-complete
  use {
    'hrsh7th/nvim-cmp',
    requires = {
      'hrsh7th/cmp-buffer',
      'saadparwaiz1/cmp_luasnip'
    }
  }

  -- Snippet engine
  use {
    'L3MON4D3/LuaSnip',
    after = 'nvim-cmp'
  }
end)
