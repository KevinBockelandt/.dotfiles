require('neorg').setup {
  load = {
    ['core.defaults'] = {},
    ['core.norg.concealer'] = {
      config = {
        icon_preset= 'diamond',
      },
    },
    ['core.integrations.treesitter'] = {},
    ['core.norg.dirman'] = { -- manages Neorg workspaces
      config = {
        workspaces = {
          notes = '~/Dropbox/notes/neorg',
        },
        index = 'index.norg',
        default_workspace = 'notes',
        open_last_workspace = true,
      },
    },
  },
}

vim.cmd('nnoremap <leader>a :Neorg toggle-concealer<CR>')
