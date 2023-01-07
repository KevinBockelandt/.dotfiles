require('nvim-treesitter.configs').setup {
  -- a list of parser names
  ensure_installed = { 'c', 'lua', 'javascript' },

  sync_install = false,
  auto_install = false,

  highlight = {
    enable = true,
    additional_vim_regex_highlighting = false,
  },
}

vim.opt.foldmethod = 'expr'
vim.opt.foldexpr = 'nvim_treesitter#foldexpr()'
