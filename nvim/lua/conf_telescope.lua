-- Use extension for file browsing
require('telescope').load_extension 'file_browser'

require('telescope').setup {
  extensions = {
    file_browser = {
    },
  },
}

-- Custom commands for telescope
vim.api.nvim_create_user_command('TeleBuffers', ':Telescope buffers', {})
vim.api.nvim_create_user_command('TeleHighlights', ':Telescope highlights', {})
vim.api.nvim_create_user_command('TeleJumplist', ':Telescope jumplist', {})
vim.api.nvim_create_user_command('TeleMarks', ':Telescope marks', {})
vim.api.nvim_create_user_command('TeleRegisters', ':Telescope registers', {})
vim.api.nvim_create_user_command('TeleGrep', ':Telescope live_grep', {})
vim.api.nvim_create_user_command('TeleTreeSitter', ':Telescope treesitter', {})
vim.api.nvim_create_user_command('TeleFileBrowser', ':Telescope file_browser', {})

vim.api.nvim_create_user_command('CustomTelescopeNotes',
  function()
    require('telescope.builtin').live_grep {
      search_dirs = { '~/Dropbox/notes' },
      prompt_title = 'Search Notes',
      shorten_path = true,
    }
  end,
  {}
)


-- bring command palette using plugin Telescope
vim.cmd('nnoremap <leader>f :Telescope commands<CR>')
vim.cmd('nnoremap <leader>s :Telescope current_buffer_fuzzy_find<CR>')
vim.cmd('nnoremap <leader>o :Telescope oldfiles<CR>')
vim.cmd('nnoremap <leader>n :CustomTelescopeNotes<CR>')
vim.cmd('nnoremap <leader>p :Telescope file_browser<CR>')
