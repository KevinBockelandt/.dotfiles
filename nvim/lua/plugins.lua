-- necessary code to bootstrap "lazy"
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"

if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)


require('lazy').setup({
  -- Color scheme
  {
    'RRethy/nvim-base16',
    lazy = false,
  },
  -- Custom icons
  'nvim-tree/nvim-web-devicons',
  -- Lua utilities. Needed by some plugins
  'nvim-lua/plenary.nvim',
  -- Status bar
  'nvim-lualine/lualine.nvim',
  -- Cheatsheet system
  'sudormrfbin/cheatsheet.nvim',
  -- Needed by cheatsheet
  'nvim-lua/popup.nvim',
  -- Jump anywhere
  {
    'phaazon/hop.nvim',
    branch = 'v2'
  },
  -- Focus text on center of window
  'folke/zen-mode.nvim',
  -- Comment code
  'preservim/nerdcommenter',
  -- C port of fzf
  {
    'nvim-telescope/telescope-fzf-native.nvim',
    build = 'make'
  },
  -- Fuzzy finder over lists
  {
    'nvim-telescope/telescope.nvim',
    branch = '0.1.x',
  },
  -- File browser extension for Telescope
  'nvim-telescope/telescope-file-browser.nvim',
  -- Tree sitter
  {
    'nvim-treesitter/nvim-treesitter',
    build = function()
      local ts_update = require('nvim-treesitter.install').update({ with_sync = true })
      ts_update()
    end
  },
  -- Snippet engine
  'hrsh7th/vim-vsnip',
  -- Source for autocomplete
  'hrsh7th/cmp-buffer',
  -- Auto-complete
  'hrsh7th/nvim-cmp',
  -- Neorg. Note writing among other things
  'nvim-neorg/neorg',
})
