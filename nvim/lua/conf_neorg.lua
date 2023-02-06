require('neorg').setup {
  load = {
    ['core.defaults'] = {},
    ['core.norg.dirman'] = { -- manages Neorg workspaces
      config = {
        workspaces = {
          notes = '~/notes',
        },
      },
    },
  },
}
